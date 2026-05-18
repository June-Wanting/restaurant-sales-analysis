import streamlit as st
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from plotly.subplots import make_subplots
from pathlib import Path

# ============================================
# Page Config
# ============================================

st.set_page_config(
    page_title="Restaurant Sales Dashboard",
    page_icon="🍔",
    layout="wide",
    initial_sidebar_state="expanded",
)

# ============================================
# Custom CSS
# ============================================

st.markdown("""
<style>
    .main { background-color: #f9fafb; }
    .block-container { padding-top: 1.5rem; padding-bottom: 1rem; }

    .kpi-card {
        background: white;
        border-radius: 12px;
        padding: 20px 24px;
        box-shadow: 0 1px 4px rgba(0,0,0,0.07);
        border-left: 4px solid #2563EB;
    }
    .kpi-label {
        font-size: 13px;
        color: #6b7280;
        font-weight: 500;
        margin-bottom: 4px;
        text-transform: uppercase;
        letter-spacing: 0.05em;
    }
    .kpi-value {
        font-size: 28px;
        font-weight: 700;
        color: #111827;
        line-height: 1.2;
    }
    .kpi-sub {
        font-size: 12px;
        color: #9ca3af;
        margin-top: 4px;
    }
    .section-title {
        font-size: 18px;
        font-weight: 600;
        color: #111827;
        margin-bottom: 0.5rem;
    }
</style>
""", unsafe_allow_html=True)

# ============================================
# Load & Prepare Data
# ============================================

@st.cache_data
def load_data():
    import re

    # Parse INSERT statements from SQL file
    BASE_DIR = Path(__file__).resolve().parent.parent

    sql_path = BASE_DIR / "sql" / "restaurant_sales_analysis.sql"

    sql_text = open(sql_path, encoding="utf-8").read()

    pattern = re.compile(
        r"values\('(.+?)','(.+?)','(.+?)','(.+?)','(.+?)','(.+?)','(.+?)','(.+?)','(.+?)'\)",
        re.IGNORECASE
    )

    rows = []
    for m in pattern.finditer(sql_text):
        rows.append({
            "order_id":       m.group(1),
            "sales_date":     m.group(2),
            "product":        m.group(3),
            "price":          float(m.group(4)),
            "sales_value":    float(m.group(5)),
            "purchase_type":  m.group(6),
            "payment_method": m.group(7),
            "manager":        re.sub(r'\s+', ' ', m.group(8)).strip(),
            "city":           m.group(9),
        })

    df = pd.DataFrame(rows)
    df["sales_date"] = pd.to_datetime(df["sales_date"])
    df["weekday"]    = df["sales_date"].dt.day_name()
    df["month"]      = df["sales_date"].dt.month_name()
    df["week"]       = df["sales_date"].dt.isocalendar().week.astype(int)
    return df

df = load_data()

# ============================================
# Sidebar Filters
# ============================================

st.sidebar.image("https://img.icons8.com/fluency/96/hamburger.png", width=60)
st.sidebar.title("Filters")

cities = ["All Cities"] + sorted(df["city"].unique())
selected_city = st.sidebar.selectbox("📍 City", cities)

products = ["All Products"] + sorted(df["product"].unique())
selected_product = st.sidebar.multiselect("🍟 Product", products[1:], default=products[1:])

payment_opts = sorted(df["payment_method"].unique())
selected_payment = st.sidebar.multiselect("💳 Payment Method", payment_opts, default=payment_opts)

purchase_opts = sorted(df["purchase_type"].unique())
selected_purchase = st.sidebar.multiselect("🛒 Purchase Type", purchase_opts, default=purchase_opts)

date_min = df["sales_date"].min().date()
date_max = df["sales_date"].max().date()
date_range = st.sidebar.date_input("📅 Date Range", value=(date_min, date_max), min_value=date_min, max_value=date_max)

st.sidebar.markdown("---")
st.sidebar.caption("Multi-City Restaurant Sales Intelligence Dashboard  \nWanti Huang · 2022")

# ============================================
# Apply Filters
# ============================================

fdf = df.copy()

if selected_city != "All Cities":
    fdf = fdf[fdf["city"] == selected_city]

if selected_product:
    fdf = fdf[fdf["product"].isin(selected_product)]

if selected_payment:
    fdf = fdf[fdf["payment_method"].isin(selected_payment)]

if selected_purchase:
    fdf = fdf[fdf["purchase_type"].isin(selected_purchase)]

if len(date_range) == 2:
    fdf = fdf[
        (fdf["sales_date"].dt.date >= date_range[0]) &
        (fdf["sales_date"].dt.date <= date_range[1])
    ]

# ============================================
# Header
# ============================================

st.title("🍔 Restaurant Sales Intelligence Dashboard")
st.caption(f"Showing **{len(fdf):,}** transactions  •  "
           f"{fdf['sales_date'].min().strftime('%d %b %Y') if len(fdf) else '—'} – "
           f"{fdf['sales_date'].max().strftime('%d %b %Y') if len(fdf) else '—'}")

st.markdown("---")

# ============================================
# KPI Cards
# ============================================

total_sales   = fdf["sales_value"].sum()
total_orders  = fdf["order_id"].nunique()
avg_order     = total_sales / total_orders if total_orders else 0
top_product   = fdf.groupby("product")["sales_value"].sum().idxmax() if len(fdf) else "—"
top_city      = fdf.groupby("city")["sales_value"].sum().idxmax() if len(fdf) else "—"

k1, k2, k3, k4, k5 = st.columns(5)

def kpi(col, label, value, sub=""):
    col.markdown(f"""
    <div class="kpi-card">
        <div class="kpi-label">{label}</div>
        <div class="kpi-value">{value}</div>
        <div class="kpi-sub">{sub}</div>
    </div>
    """, unsafe_allow_html=True)

kpi(k1, "💰 Total Revenue",      f"£{total_sales:,.0f}",  "All transactions")
kpi(k2, "📦 Total Orders",        f"{total_orders:,}",     "Unique order IDs")
kpi(k3, "🧾 Avg Order Value",     f"£{avg_order:,.2f}",   "Per transaction")
kpi(k4, "⭐ Top Product",         top_product,             "By sales value")
kpi(k5, "📍 Top City",            top_city,                "By sales value")

st.markdown("<br>", unsafe_allow_html=True)

# ============================================
# Row 1 — Daily Trend + Product Bar
# ============================================

col1, col2 = st.columns([3, 2])

with col1:
    st.markdown('<div class="section-title">📈 Daily Sales Trend</div>', unsafe_allow_html=True)

    daily = fdf.groupby("sales_date")["sales_value"].sum().reset_index()
    daily["rolling_7"] = daily["sales_value"].rolling(7, min_periods=1).mean()

    fig = go.Figure()
    fig.add_trace(go.Scatter(
        x=daily["sales_date"], y=daily["sales_value"],
        name="Daily Revenue", line=dict(color="#93C5FD", width=1.5),
        fill="tozeroy", fillcolor="rgba(147,197,253,0.15)"
    ))
    fig.add_trace(go.Scatter(
        x=daily["sales_date"], y=daily["rolling_7"],
        name="7-Day Avg", line=dict(color="#2563EB", width=2.5, dash="dot"),
    ))
    fig.update_layout(
        margin=dict(l=0, r=0, t=10, b=0), height=300,
        legend=dict(orientation="h", y=1.1),
        yaxis_tickprefix="£", yaxis_tickformat=",.0f",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(showgrid=False), yaxis=dict(gridcolor="#f0f0f0"),
    )
    st.plotly_chart(fig, use_container_width=True)

with col2:
    st.markdown('<div class="section-title">🍟 Revenue by Product</div>', unsafe_allow_html=True)

    prod = fdf.groupby("product")["sales_value"].sum().sort_values().reset_index()
    prod["pct"] = prod["sales_value"] / prod["sales_value"].sum() * 100
    prod["label"] = prod.apply(lambda r: f"£{r['sales_value']:,.0f} ({r['pct']:.1f}%)", axis=1)

    fig2 = px.bar(
        prod, x="sales_value", y="product", orientation="h",
        text="label", color="sales_value",
        color_continuous_scale=["#BFDBFE", "#2563EB"],
    )
    fig2.update_traces(textposition="outside", textfont_size=11)
    fig2.update_layout(
        margin=dict(l=0, r=80, t=10, b=0), height=300,
        coloraxis_showscale=False,
        xaxis_tickprefix="£", xaxis_tickformat=",.0f",
        xaxis_title="", yaxis_title="",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(gridcolor="#f0f0f0"), yaxis=dict(showgrid=False),
    )
    st.plotly_chart(fig2, use_container_width=True)

# ============================================
# Row 2 — City + Payment + Purchase Type
# ============================================

col3, col4, col5 = st.columns(3)

with col3:
    st.markdown('<div class="section-title">📍 Revenue by City</div>', unsafe_allow_html=True)

    city = fdf.groupby("city")["sales_value"].sum().sort_values(ascending=False).reset_index()
    city["pct"] = city["sales_value"] / city["sales_value"].sum() * 100

    fig3 = px.bar(
        city, x="city", y="sales_value",
        color="sales_value", color_continuous_scale=["#BFDBFE", "#2563EB"],
        text=city["sales_value"].apply(lambda v: f"£{v:,.0f}"),
    )
    fig3.update_traces(textposition="outside", textfont_size=11)
    fig3.update_layout(
        margin=dict(l=0, r=0, t=10, b=0), height=300,
        coloraxis_showscale=False,
        yaxis_tickprefix="£", yaxis_tickformat=",.0f",
        xaxis_title="", yaxis_title="",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(showgrid=False), yaxis=dict(gridcolor="#f0f0f0"),
    )
    st.plotly_chart(fig3, use_container_width=True)

with col4:
    st.markdown('<div class="section-title">💳 Payment Method Share</div>', unsafe_allow_html=True)

    pay = fdf.groupby("payment_method")["sales_value"].sum().reset_index()

    fig4 = px.pie(
        pay, values="sales_value", names="payment_method",
        color_discrete_sequence=["#2563EB", "#60A5FA", "#BFDBFE"],
        hole=0.45,
    )
    fig4.update_traces(
        texttemplate="%{label}<br><b>%{percent:.1%}</b>",
        hovertemplate="%{label}: £%{value:,.0f}",
        textfont_size=11,
    )
    fig4.update_layout(
        margin=dict(l=0, r=0, t=10, b=0), height=300,
        showlegend=False,
        plot_bgcolor="white", paper_bgcolor="white",
        annotations=[dict(text=f"£{pay['sales_value'].sum():,.0f}", x=0.5, y=0.5,
                          font_size=14, font_color="#111827", showarrow=False)]
    )
    st.plotly_chart(fig4, use_container_width=True)

with col5:
    st.markdown('<div class="section-title">🛒 Purchase Type</div>', unsafe_allow_html=True)

    pt = fdf.groupby("purchase_type")["sales_value"].sum().sort_values(ascending=False).reset_index()
    pt["pct"] = pt["sales_value"] / pt["sales_value"].sum() * 100
    pt["label"] = pt.apply(lambda r: f"£{r['sales_value']:,.0f}<br>({r['pct']:.1f}%)", axis=1)

    fig5 = px.bar(
        pt, x="purchase_type", y="sales_value",
        color="purchase_type",
        color_discrete_sequence=["#2563EB", "#60A5FA", "#BFDBFE"],
        text="label",
    )
    fig5.update_traces(textposition="outside", textfont_size=10)
    fig5.update_layout(
        margin=dict(l=0, r=0, t=10, b=0), height=300,
        showlegend=False,
        yaxis_tickprefix="£", yaxis_tickformat=",.0f",
        xaxis_title="", yaxis_title="",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(showgrid=False), yaxis=dict(gridcolor="#f0f0f0"),
        yaxis_range=[0, pt["sales_value"].max() * 1.3],
    )
    st.plotly_chart(fig5, use_container_width=True)

# ============================================
# Row 3 — Weekday Heatmap + Manager Performance
# ============================================

col6, col7 = st.columns([2, 3])

with col6:
    st.markdown('<div class="section-title">📅 Sales by Weekday</div>', unsafe_allow_html=True)

    weekday_order = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    wd = fdf.groupby("weekday")["sales_value"].sum().reindex(weekday_order).reset_index()
    wd.columns = ["weekday", "sales_value"]

    fig6 = px.bar(
        wd, x="weekday", y="sales_value",
        color="sales_value", color_continuous_scale=["#BFDBFE","#2563EB"],
        text=wd["sales_value"].apply(lambda v: f"£{v:,.0f}"),
    )
    fig6.update_traces(textposition="outside", textfont_size=10)
    fig6.update_layout(
        margin=dict(l=0, r=0, t=10, b=0), height=280,
        coloraxis_showscale=False,
        yaxis_tickprefix="£", yaxis_tickformat=",.0f",
        xaxis_title="", yaxis_title="",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(showgrid=False), yaxis=dict(gridcolor="#f0f0f0"),
        yaxis_range=[0, wd["sales_value"].max() * 1.18],
    )
    st.plotly_chart(fig6, use_container_width=True)

with col7:
    st.markdown('<div class="section-title">👤 Manager Performance</div>', unsafe_allow_html=True)

    mgr = (
        fdf.groupby("manager")
        .agg(total_revenue=("sales_value","sum"), total_orders=("order_id","count"))
        .reset_index()
        .sort_values("total_revenue", ascending=False)
    )
    mgr["avg_order"] = mgr["total_revenue"] / mgr["total_orders"]
    mgr["revenue_fmt"] = mgr["total_revenue"].apply(lambda v: f"£{v:,.0f}")
    mgr["avg_fmt"]     = mgr["avg_order"].apply(lambda v: f"£{v:,.2f}")

    fig7 = go.Figure()
    fig7.add_trace(go.Bar(
        y=mgr["manager"], x=mgr["total_revenue"],
        orientation="h", name="Revenue",
        marker_color="#2563EB",
        text=mgr["revenue_fmt"], textposition="outside",
        textfont_size=11,
    ))
    fig7.update_layout(
        margin=dict(l=0, r=80, t=10, b=0), height=280,
        xaxis_tickprefix="£", xaxis_tickformat=",.0f",
        xaxis_title="", yaxis_title="",
        plot_bgcolor="white", paper_bgcolor="white",
        xaxis=dict(gridcolor="#f0f0f0"), yaxis=dict(showgrid=False),
        xaxis_range=[0, mgr["total_revenue"].max() * 1.25],
    )
    st.plotly_chart(fig7, use_container_width=True)

# ============================================
# Row 4 — City × Product Heatmap
# ============================================

st.markdown("---")
st.markdown('<div class="section-title">🗺️ City × Product Revenue Heatmap</div>', unsafe_allow_html=True)

pivot = fdf.pivot_table(
    index="city", columns="product",
    values="sales_value", aggfunc="sum", fill_value=0
)

fig8 = px.imshow(
    pivot,
    color_continuous_scale=["#EFF6FF","#BFDBFE","#3B82F6","#1D4ED8"],
    aspect="auto",
    text_auto=".0f",
)
fig8.update_traces(textfont_size=12)
fig8.update_layout(
    margin=dict(l=0, r=0, t=10, b=0), height=260,
    coloraxis_colorbar=dict(tickprefix="£", tickformat=",.0f"),
    plot_bgcolor="white", paper_bgcolor="white",
    xaxis_title="", yaxis_title="",
)
st.plotly_chart(fig8, use_container_width=True)

# ============================================
# Row 5 — Raw Data Table
# ============================================

with st.expander("🗂️ View Raw Transaction Data"):
    display_df = fdf[[
        "order_id","sales_date","product","city",
        "price","sales_value","purchase_type","payment_method","manager"
    ]].rename(columns={
        "order_id":"Order ID","sales_date":"Date","product":"Product",
        "city":"City","price":"Price (£)","sales_value":"Sales Value (£)",
        "purchase_type":"Purchase Type","payment_method":"Payment Method","manager":"Manager"
    })
    st.dataframe(display_df, use_container_width=True, height=350)
    st.caption(f"Total: {len(display_df):,} rows")
