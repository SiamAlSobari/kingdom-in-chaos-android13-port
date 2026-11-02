.class public Lcom/droidhang/view/RatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private adjustWidth:Z

.field private aspectRatio:F

.field private onSizeChangedListener:Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/droidhang/view/RatioFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    .line 36
    invoke-direct {p0, p2}, Lcom/droidhang/view/RatioFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    .line 41
    invoke-direct {p0, p2}, Lcom/droidhang/view/RatioFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/droidhang/view/RatioFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 47
    sget-object v2, Lcom/droidhang/crosspromotion/R$styleable;->RatioImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/droidhang/view/RatioFrameLayout;->adjustWidth:Z

    .line 54
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
    .line 133
    move v0, p0

    .line 134
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 135
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 136
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 151
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 138
    :sswitch_0
    move v0, p0

    .line 139
    goto :goto_0

    .line 141
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 142
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 144
    :cond_0
    move v0, p0

    .line 146
    goto :goto_0

    .line 148
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 136
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
    .line 57
    iget v0, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    return v0
.end method

.method public isAdjustWidth()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/droidhang/view/RatioFrameLayout;->adjustWidth:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 86
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 87
    .local v17, "widthSpecMode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/droidhang/view/RatioFrameLayout;->getPaddingLeft()I

    move-result v12

    .line 92
    .local v12, "pleft":I
    invoke-virtual/range {p0 .. p0}, Lcom/droidhang/view/RatioFrameLayout;->getPaddingRight()I

    move-result v13

    .line 93
    .local v13, "pright":I
    invoke-virtual/range {p0 .. p0}, Lcom/droidhang/view/RatioFrameLayout;->getPaddingTop()I

    move-result v14

    .line 94
    .local v14, "ptop":I
    invoke-virtual/range {p0 .. p0}, Lcom/droidhang/view/RatioFrameLayout;->getPaddingBottom()I

    move-result v11

    .line 96
    .local v11, "pbottom":I
    const/4 v15, 0x0

    .line 97
    .local v15, "w":I
    const/4 v7, 0x0

    .line 98
    .local v7, "h":I
    add-int v18, v12, v13

    add-int v15, v15, v18

    .line 99
    add-int v18, v14, v11

    add-int v7, v7, v18

    .line 101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/droidhang/view/RatioFrameLayout;->adjustWidth:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 102
    const/16 v18, 0x0

    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/droidhang/view/RatioFrameLayout;->resolveSizeAndState2(III)I

    move-result v8

    .line 103
    .local v8, "heightSize":I
    sub-int v18, v8, v14

    sub-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v12

    add-int v16, v18, v13

    .line 109
    .local v16, "widthSize":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/droidhang/view/RatioFrameLayout;->getChildCount()I

    move-result v5

    .line 110
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_2

    .line 111
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/droidhang/view/RatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 112
    .local v6, "element":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 113
    .local v10, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v10, :cond_0

    .line 114
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .end local v10    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .restart local v10    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int v18, v14, v11

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 121
    .local v3, "childHeightSpec":I
    add-int v18, v12, v13

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 123
    .local v4, "childWidthSpec":I
    invoke-virtual {v6, v4, v3}, Landroid/view/View;->measure(II)V

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "count":I
    .end local v6    # "element":Landroid/view/View;
    .end local v8    # "heightSize":I
    .end local v9    # "i":I
    .end local v10    # "p":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "widthSize":I
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/droidhang/view/RatioFrameLayout;->resolveSizeAndState2(III)I

    move-result v16

    .line 106
    .restart local v16    # "widthSize":I
    sub-int v18, v16, v12

    sub-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v14

    add-int v8, v18, v11

    .restart local v8    # "heightSize":I
    goto :goto_0

    .line 126
    .restart local v5    # "count":I
    .restart local v9    # "i":I
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/droidhang/view/RatioFrameLayout;->setMeasuredDimension(II)V

    .line 130
    .end local v5    # "count":I
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v9    # "i":I
    .end local v11    # "pbottom":I
    .end local v12    # "pleft":I
    .end local v13    # "pright":I
    .end local v14    # "ptop":I
    .end local v15    # "w":I
    .end local v16    # "widthSize":I
    :goto_2
    return-void

    .line 128
    :cond_3
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 157
    iget-object v0, p0, Lcom/droidhang/view/RatioFrameLayout;->onSizeChangedListener:Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/droidhang/view/RatioFrameLayout;->onSizeChangedListener:Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;->onSizeChanged(Lcom/droidhang/view/RatioFrameLayout;IIII)V

    .line 160
    :cond_0
    return-void
.end method

.method public setAdjustWidth(Z)V
    .locals 1
    .param p1, "adjustWidth"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/droidhang/view/RatioFrameLayout;->adjustWidth:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/droidhang/view/RatioFrameLayout;->adjustWidth:Z

    .line 71
    invoke-virtual {p0}, Lcom/droidhang/view/RatioFrameLayout;->requestLayout()V

    .line 72
    invoke-virtual {p0}, Lcom/droidhang/view/RatioFrameLayout;->invalidate()V

    .line 74
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 61
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 62
    iput p1, p0, Lcom/droidhang/view/RatioFrameLayout;->aspectRatio:F

    .line 63
    invoke-virtual {p0}, Lcom/droidhang/view/RatioFrameLayout;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lcom/droidhang/view/RatioFrameLayout;->invalidate()V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .param p1, "onSizeChangedListener"    # Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/droidhang/view/RatioFrameLayout;->onSizeChangedListener:Lcom/droidhang/view/RatioFrameLayout$OnSizeChangedListener;

    .line 82
    return-void
.end method
