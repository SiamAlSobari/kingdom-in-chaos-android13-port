.class public Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "InterstitialCloseButtonRelativeLayout.java"


# static fields
.field private static final FIFTY_PERCENT_TRANSPARENCY:I = 0x80


# instance fields
.field private mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 30
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->createCloseButtonRelativeLayout(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private createCloseButtonRelativeLayout(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 36
    const/16 v7, 0xf

    invoke-virtual {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->getPixelsFromDip(I)I

    move-result v2

    .line 37
    .local v2, "fifteenDipInPixels":I
    const/16 v7, 0x1e

    invoke-virtual {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->getPixelsFromDip(I)I

    move-result v6

    .line 38
    .local v6, "thirtyDipInPixels":I
    const/16 v7, 0x3c

    invoke-virtual {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->getPixelsFromDip(I)I

    move-result v5

    .line 42
    .local v5, "sixtyDipInPixels":I
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v3, "imageView":Landroid/widget/ImageView;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 46
    .local v0, "circle":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 48
    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 49
    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 50
    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 54
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 56
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 59
    new-instance v1, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;

    iget-object v7, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v1, p1, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;-><init>(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 60
    .local v1, "drawView":Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    invoke-virtual {v1, v4}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/DrawCloseXView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x35

    invoke-direct {v7, v5, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getPixelsFromDip(I)I
    .locals 3
    .param p1, "dip"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
