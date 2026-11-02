.class final Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/CrossPromotionUtil;->displayFullScreen()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/droidhang/crosspromotion/Model$AppItem;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/Model$AppItem;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const v10, 0x3f19999a    # 0.6f

    .line 255
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 325
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$102(Z)Z

    .line 259
    iget-object v7, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v7, v7, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v7}, Lcom/droidhang/crosspromotion/Statistic;->displayFullScreen(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/droidhang/crosspromotion/R$layout;->cp_fullscreen:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 263
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$300()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/droidhang/crosspromotion/R$id;->fl_container:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/droidhang/view/RatioFrameLayout;

    .line 270
    .local v5, "rfl":Lcom/droidhang/view/RatioFrameLayout;
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/droidhang/crosspromotion/R$id;->img_content:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/droidhang/view/RatioImageView;

    .line 273
    .local v4, "rImageView":Lcom/droidhang/view/RatioImageView;
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$300()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    .line 274
    .local v6, "width":I
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$300()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 275
    .local v0, "height":I
    if-lez v6, :cond_2

    if-lez v0, :cond_2

    int-to-float v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    const v8, 0x3fd55555

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 284
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v7, v7, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    invoke-static {v7}, Lcom/droidhang/crosspromotion/Model;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "imgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, "myBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Lcom/droidhang/view/RatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    .end local v2    # "myBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$1;

    invoke-direct {v8, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$1;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/droidhang/crosspromotion/R$id;->btn_close:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$2;

    invoke-direct {v8, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$2;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/droidhang/crosspromotion/R$id;->img_content:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;

    invoke-direct {v8, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 279
    .end local v1    # "imgFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v5, v12}, Lcom/droidhang/view/RatioFrameLayout;->setAdjustWidth(Z)V

    .line 280
    invoke-virtual {v5, v10}, Lcom/droidhang/view/RatioFrameLayout;->setAspectRatio(F)V

    .line 281
    invoke-virtual {v4, v12}, Lcom/droidhang/view/RatioImageView;->setAdjustWidth(Z)V

    .line 282
    invoke-virtual {v4, v10}, Lcom/droidhang/view/RatioImageView;->setAspectRatio(F)V

    goto :goto_1
.end method
