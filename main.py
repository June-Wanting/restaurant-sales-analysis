import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import seaborn as sns

# ============================================
# Project Configuration
# ============================================

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

DATA_PATH = os.path.join(
    BASE_DIR,
    "data",
    "Sales-Data-Analysis.csv"
)

OUTPUT_PATH = os.path.join(BASE_DIR, "output")

FIGURE_PATH = os.path.join(
    OUTPUT_PATH,
    "figures"
)

os.makedirs(OUTPUT_PATH, exist_ok=True)
os.makedirs(FIGURE_PATH, exist_ok=True)

pd.set_option('display.max_columns', None)

# ============================================
# Visualization Style
# ============================================

plt.rcParams.update({
    'figure.facecolor': 'white',
    'axes.facecolor': '#f8f8f8',
    'axes.grid': True,
    'grid.color': 'white',
    'grid.linewidth': 1.2,
    'axes.spines.top': False,
    'axes.spines.right': False,
    'font.size': 11,
})

BLUE = '#2563EB'

# ============================================
# Load Dataset
# ============================================

print("=" * 50)
print("Loading Dataset...")
print("=" * 50)

print(f"Dataset Path: {DATA_PATH}")

df = pd.read_csv(DATA_PATH, encoding='utf-8')

print(df.head())
print("\nDataset Shape:", df.shape)

# ============================================
# Data Cleaning & Validation
# ============================================

print("\n" + "=" * 50)
print("DATA CLEANING & VALIDATION")
print("=" * 50)

print("\nMissing Values:")
print(df.isnull().sum())

duplicates = df.duplicated().sum()
print("\nDuplicate Rows:", duplicates)

df = df.drop_duplicates()

# ============================================
# Convert Date Column
# ============================================

df['Date'] = pd.to_datetime(df['Date'], dayfirst=True)

df['Year'] = df['Date'].dt.year
df['Month'] = df['Date'].dt.month
df['Month_Name'] = df['Date'].dt.month_name()
df['Weekday'] = df['Date'].dt.day_name()

# ============================================
# Data Validation
# ============================================

print("\n" + "=" * 50)
print("DATA VALIDATION")
print("=" * 50)

print(df[['Price', 'Quantity']].head(10))

print("\nObservation:")
print("""
The Quantity column contains large decimal values,
which are inconsistent with realistic item quantities.

The column is likely representing sales value
rather than transaction quantity.

The column will be renamed to Sales_Value.
""")

df.rename(columns={'Quantity': 'Sales_Value'}, inplace=True)

# ============================================
# Save Cleaned Dataset
# ============================================

cleaned_path = os.path.join(OUTPUT_PATH, "cleaned_sales_data.csv")
df.to_csv(cleaned_path, index=False)
print("\nCleaned dataset saved.")

# ============================================
# Statistical Summary
# ============================================

print("\n" + "=" * 50)
print("STATISTICAL SUMMARY")
print("=" * 50)

print(df.describe())

# ============================================
# KPI Analysis
# ============================================

print("\n" + "=" * 50)
print("KPI ANALYSIS")
print("=" * 50)

total_sales = df['Sales_Value'].sum()
total_orders = df['Order ID'].nunique()
average_sales = total_sales / total_orders

top_product = (
    df.groupby('Product')['Sales_Value']
    .sum().sort_values(ascending=False).idxmax()
)

top_city = (
    df.groupby('City')['Sales_Value']
    .sum().sort_values(ascending=False).idxmax()
)

print(f"Total Sales Value: {total_sales:.2f}")
print(f"Total Orders: {total_orders}")
print(f"Average Transaction Value: {average_sales:.2f}")
print(f"Top Product: {top_product}")
print(f"Top City: {top_city}")

# ============================================
# Daily Sales Trend
# ============================================

print("\n" + "=" * 50)
print("TIME SERIES ANALYSIS")
print("=" * 50)

daily_sales = (
    df.groupby('Date')['Sales_Value']
    .sum()
    .reset_index()
)

fig, ax = plt.subplots(figsize=(13, 6))

ax.plot(
    daily_sales['Date'],
    daily_sales['Sales_Value'],
    color=BLUE,
    linewidth=2,
    zorder=3
)

ax.fill_between(
    daily_sales['Date'],
    daily_sales['Sales_Value'],
    alpha=0.15,
    color=BLUE
)

# Annotate peak and trough
idx_max = daily_sales['Sales_Value'].idxmax()
idx_min = daily_sales['Sales_Value'].idxmin()

for idx, label, va in [(idx_max, 'Peak', 'bottom'), (idx_min, 'Low', 'top')]:
    ax.annotate(
        f"{label}\n£{daily_sales.loc[idx, 'Sales_Value']:,.0f}",
        xy=(daily_sales.loc[idx, 'Date'], daily_sales.loc[idx, 'Sales_Value']),
        xytext=(0, 14 if va == 'bottom' else -14),
        textcoords='offset points',
        ha='center', va=va,
        fontsize=9,
        arrowprops=dict(arrowstyle='->', color='#555', lw=1),
        bbox=dict(boxstyle='round,pad=0.3', fc='white', ec='#ccc', lw=0.8)
    )

ax.set_title("Daily Sales Trend", fontsize=14, fontweight='bold', pad=15)
ax.set_xlabel("Date", fontsize=11)
ax.set_ylabel("Sales Value (£)", fontsize=11)
ax.yaxis.set_major_formatter(mticker.FuncFormatter(lambda x, _: f'£{x:,.0f}'))
plt.xticks(rotation=45)
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "daily_sales_trend.png"), dpi=150)
plt.close()
print("Daily Sales Trend chart saved.")

# ============================================
# Product Analysis
# ============================================

print("\n" + "=" * 50)
print("PRODUCT ANALYSIS")
print("=" * 50)

product_sales = (
    df.groupby('Product')['Sales_Value']
    .sum()
    .sort_values(ascending=False)
)

print(product_sales)

fig, ax = plt.subplots(figsize=(10, 6))

bars = ax.bar(
    product_sales.index,
    product_sales.values,
    color=BLUE,
    edgecolor='white',
    linewidth=0.8
)

# Value label above each bar
for bar in bars:
    height = bar.get_height()
    ax.text(
        bar.get_x() + bar.get_width() / 2,
        height + 300,
        f'£{height:,.0f}',
        ha='center', va='bottom',
        fontsize=10, fontweight='bold'
    )

# Percentage label inside each bar
for bar, val in zip(bars, product_sales.values):
    pct = val / product_sales.sum() * 100
    ax.text(
        bar.get_x() + bar.get_width() / 2,
        bar.get_height() * 0.5,
        f'{pct:.1f}%',
        ha='center', va='center',
        fontsize=9, color='white', fontweight='bold'
    )

ax.set_title("Sales Value by Product", fontsize=14, fontweight='bold', pad=15)
ax.set_xlabel("Product", fontsize=11)
ax.set_ylabel("Sales Value (£)", fontsize=11)
ax.yaxis.set_major_formatter(mticker.FuncFormatter(lambda x, _: f'£{x:,.0f}'))
ax.set_ylim(0, product_sales.max() * 1.15)
plt.xticks(rotation=30, ha='right')
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "product_sales_analysis.png"), dpi=150)
plt.close()
print("Product Analysis chart saved.")

# ============================================
# City Analysis
# ============================================

print("\n" + "=" * 50)
print("CITY ANALYSIS")
print("=" * 50)

city_sales = (
    df.groupby('City')['Sales_Value']
    .sum()
    .sort_values(ascending=False)
)

print(city_sales)

fig, ax = plt.subplots(figsize=(10, 6))

colors = [BLUE if i == 0 else '#93C5FD' for i in range(len(city_sales))]

bars = ax.barh(
    city_sales.index,
    city_sales.values,
    color=colors,
    edgecolor='white',
    linewidth=0.8
)

# Value + percentage label at end of each bar
for bar, val in zip(bars, city_sales.values):
    pct = val / city_sales.sum() * 100
    ax.text(
        bar.get_width() + 300,
        bar.get_y() + bar.get_height() / 2,
        f'£{val:,.0f}  ({pct:.1f}%)',
        va='center', ha='left',
        fontsize=10
    )

ax.set_title("Sales Value by City", fontsize=14, fontweight='bold', pad=15)
ax.set_xlabel("Sales Value (£)", fontsize=11)
ax.xaxis.set_major_formatter(mticker.FuncFormatter(lambda x, _: f'£{x:,.0f}'))
ax.set_xlim(0, city_sales.max() * 1.35)
ax.invert_yaxis()
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "city_sales_analysis.png"), dpi=150)
plt.close()
print("City Analysis chart saved.")

# ============================================
# Payment Method Analysis
# ============================================

print("\n" + "=" * 50)
print("PAYMENT METHOD ANALYSIS")
print("=" * 50)

payment_analysis = (
    df.groupby('Payment Method')['Sales_Value']
    .sum()
    .sort_values(ascending=False)
)

print(payment_analysis)

fig, ax = plt.subplots(figsize=(7, 7))

palette = ['#2563EB', '#60A5FA', '#BFDBFE']

wedges, texts, autotexts = ax.pie(
    payment_analysis.values,
    labels=payment_analysis.index,
    autopct='%1.1f%%',
    colors=palette,
    startangle=90,
    wedgeprops=dict(edgecolor='white', linewidth=2),
    pctdistance=0.65
)

for text in texts:
    text.set_fontsize(12)

for autotext in autotexts:
    autotext.set_fontsize(11)
    autotext.set_fontweight('bold')
    autotext.set_color('white')

# Legend with actual values
legend_labels = [
    f"{method}: £{val:,.0f}"
    for method, val in zip(payment_analysis.index, payment_analysis.values)
]
ax.legend(wedges, legend_labels, loc='lower center',
          bbox_to_anchor=(0.5, -0.08), fontsize=10)

ax.set_title("Sales Share by Payment Method", fontsize=14,
             fontweight='bold', pad=15)
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "payment_method_analysis.png"), dpi=150)
plt.close()
print("Payment Method chart saved.")

# ============================================
# Purchase Type Analysis
# ============================================

print("\n" + "=" * 50)
print("PURCHASE TYPE ANALYSIS")
print("=" * 50)

purchase_analysis = (
    df.groupby('Purchase Type')['Sales_Value']
    .sum()
    .sort_values(ascending=False)
)

print(purchase_analysis)

fig, ax = plt.subplots(figsize=(7, 6))

palette_pt = [BLUE if v == purchase_analysis.max() else '#93C5FD'
              for v in purchase_analysis.values]

bars = ax.bar(
    purchase_analysis.index,
    purchase_analysis.values,
    color=palette_pt,
    edgecolor='white',
    linewidth=0.8,
    width=0.5
)

# Value + percentage label above each bar
for bar, val in zip(bars, purchase_analysis.values):
    pct = val / purchase_analysis.sum() * 100
    ax.text(
        bar.get_x() + bar.get_width() / 2,
        bar.get_height() + 500,
        f'£{val:,.0f}\n({pct:.1f}%)',
        ha='center', va='bottom',
        fontsize=10, fontweight='bold'
    )

ax.set_title("Sales by Purchase Type", fontsize=14,
             fontweight='bold', pad=15)
ax.set_xlabel("Purchase Type", fontsize=11)
ax.set_ylabel("Sales Value (£)", fontsize=11)
ax.yaxis.set_major_formatter(mticker.FuncFormatter(lambda x, _: f'£{x:,.0f}'))
ax.set_ylim(0, purchase_analysis.max() * 1.25)
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "purchase_type_analysis.png"), dpi=150)
plt.close()
print("Purchase Type chart saved.")

# ============================================
# Correlation Analysis
# ============================================

print("\n" + "=" * 50)
print("CORRELATION ANALYSIS")
print("=" * 50)

correlation = df[['Price', 'Sales_Value']].corr()

print(correlation)

fig, ax = plt.subplots(figsize=(6, 5))

sns.heatmap(
    correlation,
    annot=True,
    fmt='.2f',
    cmap='coolwarm',
    vmin=-1, vmax=1,
    linewidths=2,
    linecolor='white',
    annot_kws={'size': 13, 'weight': 'bold'},
    ax=ax
)

ax.set_title("Correlation Heatmap\n(Price vs Sales Value)",
             fontsize=13, fontweight='bold', pad=12)
plt.tight_layout()

plt.savefig(os.path.join(FIGURE_PATH, "correlation_heatmap.png"), dpi=150)
plt.close()
print("Correlation Heatmap saved.")

# ============================================
# Business Insights
# ============================================

print("\n" + "=" * 50)
print("BUSINESS INSIGHTS")
print("=" * 50)

print("""
1. Beverages (29.9%), Fries (27.4%), and Burgers (24.8%)
   account for 82.1% of total revenue (£96,039 / £116,995).

2. Lisbon (30.6%) and London (28.7%) generate 59.2% of
   total revenue. Paris contributes only 10.7%.

3. Online orders (41.9%) outperform Drive-thru (23.7%)
   by 76.5% in total sales value.

4. Credit Card dominates payment at 45.3%; Gift Card
   accounts for nearly a quarter of revenue (23.6%).

5. Data validation identified the 'Quantity' column as
   a Sales Value metric, preventing misleading KPI results.
""")

# ============================================
# Project Completed
# ============================================

print("\n" + "=" * 50)
print("PROJECT COMPLETED SUCCESSFULLY")
print("=" * 50)