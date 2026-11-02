.class public Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;
.super Landroid/view/View;
.source "DrawCloseXView.java"


# static fields
.field private static final SEVENTY_PERCENT_OPAQUE:I = 0xb2

.field public static final STROKE_WIDTH:F = 1.5f

.field private static final mFixed_radius:I = 0xf


# instance fields
.field private mDensityDependantRadius:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 35
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mDensityDependantRadius:I

    .line 36
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 40
    iget v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mDensityDependantRadius:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mDensityDependantRadius:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    iget v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mDensityDependantRadius:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mDensityDependantRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    return-void
.end method
