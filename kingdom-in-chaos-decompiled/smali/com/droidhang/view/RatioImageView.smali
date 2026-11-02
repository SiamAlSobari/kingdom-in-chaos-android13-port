.class public Lcom/droidhang/view/RatioImageView;
.super Landroid/widget/ImageView;
.source "RatioImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private adjustWidth:Z

.field private aspectRatio:F

.field private onSizeChangedListener:Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/droidhang/view/RatioImageView;->init(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    .line 34
    invoke-direct {p0, p2}, Lcom/droidhang/view/RatioImageView;->init(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    .line 39
    invoke-direct {p0, p2}, Lcom/droidhang/view/RatioImageView;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 45
    sget-object v2, Lcom/droidhang/crosspromotion/R$styleable;->RatioImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/droidhang/view/RatioImageView;->adjustWidth:Z

    .line 52
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState2(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 115
    move v0, p0

    .line 116
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 117
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 118
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 133
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 120
    :sswitch_0
    move v0, p0

    .line 121
    goto :goto_0

    .line 123
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 124
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 126
    :cond_0
    move v0, p0

    .line 128
    goto :goto_0

    .line 130
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    return v0
.end method

.method public isAdjustWidth()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/droidhang/view/RatioImageView;->adjustWidth:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 86
    .local v8, "widthSpecMode":I
    iget v9, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->getPaddingLeft()I

    move-result v3

    .line 91
    .local v3, "pleft":I
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->getPaddingRight()I

    move-result v4

    .line 92
    .local v4, "pright":I
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->getPaddingTop()I

    move-result v5

    .line 93
    .local v5, "ptop":I
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->getPaddingBottom()I

    move-result v2

    .line 95
    .local v2, "pbottom":I
    const/4 v6, 0x0

    .line 96
    .local v6, "w":I
    const/4 v0, 0x0

    .line 97
    .local v0, "h":I
    add-int v9, v3, v4

    add-int/2addr v6, v9

    .line 98
    add-int v9, v5, v2

    add-int/2addr v0, v9

    .line 100
    iget-boolean v9, p0, Lcom/droidhang/view/RatioImageView;->adjustWidth:Z

    if-eqz v9, :cond_1

    .line 101
    invoke-static {v0, p2, v11}, Lcom/droidhang/view/RatioImageView;->resolveSizeAndState2(III)I

    move-result v1

    .line 102
    .local v1, "heightSize":I
    sub-int v9, v1, v5

    sub-int/2addr v9, v2

    int-to-float v9, v9

    iget v10, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v3

    add-int v7, v9, v4

    .line 108
    .local v7, "widthSize":I
    :goto_0
    invoke-virtual {p0, v7, v1}, Lcom/droidhang/view/RatioImageView;->setMeasuredDimension(II)V

    .line 112
    .end local v0    # "h":I
    .end local v1    # "heightSize":I
    .end local v2    # "pbottom":I
    .end local v3    # "pleft":I
    .end local v4    # "pright":I
    .end local v5    # "ptop":I
    .end local v6    # "w":I
    .end local v7    # "widthSize":I
    :goto_1
    return-void

    .line 104
    .restart local v0    # "h":I
    .restart local v2    # "pbottom":I
    .restart local v3    # "pleft":I
    .restart local v4    # "pright":I
    .restart local v5    # "ptop":I
    .restart local v6    # "w":I
    :cond_1
    invoke-static {v6, p1, v11}, Lcom/droidhang/view/RatioImageView;->resolveSizeAndState2(III)I

    move-result v7

    .line 105
    .restart local v7    # "widthSize":I
    sub-int v9, v7, v3

    sub-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    add-int v1, v9, v2

    .restart local v1    # "heightSize":I
    goto :goto_0

    .line 110
    .end local v0    # "h":I
    .end local v1    # "heightSize":I
    .end local v2    # "pbottom":I
    .end local v3    # "pleft":I
    .end local v4    # "pright":I
    .end local v5    # "ptop":I
    .end local v6    # "w":I
    .end local v7    # "widthSize":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 139
    iget-object v0, p0, Lcom/droidhang/view/RatioImageView;->onSizeChangedListener:Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/droidhang/view/RatioImageView;->onSizeChangedListener:Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;->onSizeChanged(Lcom/droidhang/view/RatioImageView;IIII)V

    .line 142
    :cond_0
    return-void
.end method

.method public setAdjustWidth(Z)V
    .locals 1
    .param p1, "adjustWidth"    # Z

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/droidhang/view/RatioImageView;->adjustWidth:Z

    if-eq v0, p1, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/droidhang/view/RatioImageView;->adjustWidth:Z

    .line 69
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->requestLayout()V

    .line 70
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->invalidate()V

    .line 72
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 59
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 60
    iput p1, p0, Lcom/droidhang/view/RatioImageView;->aspectRatio:F

    .line 61
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->requestLayout()V

    .line 62
    invoke-virtual {p0}, Lcom/droidhang/view/RatioImageView;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;)V
    .locals 0
    .param p1, "onSizeChangedListener"    # Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/droidhang/view/RatioImageView;->onSizeChangedListener:Lcom/droidhang/view/RatioImageView$OnSizeChangedListener;

    .line 80
    return-void
.end method
