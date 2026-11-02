.class final Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/CrossPromotionUtil;->displayDialog()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

.field final synthetic val$rateMe:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/Model$AppItem;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iput-object p2, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$rateMe:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 118
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$102(Z)Z

    .line 122
    iget-object v6, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v6, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v6}, Lcom/droidhang/crosspromotion/Statistic;->displayDialog(Ljava/lang/String;)V

    .line 126
    :cond_2
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$layout;->cp_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 128
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$300()Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$1;

    invoke-direct {v7, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$1;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->btn_close:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$2;

    invoke-direct {v7, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$2;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->btn_exit:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$3;

    invoke-direct {v7, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$3;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->btn_url:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 167
    .local v0, "button":Landroid/widget/Button;
    new-instance v6, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;

    invoke-direct {v6, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->img_content:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$5;

    invoke-direct {v7, p0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$5;-><init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->imgv_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 219
    .local v5, "title":Landroid/widget/ImageView;
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/droidhang/crosspromotion/R$id;->img_content:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 221
    .local v1, "content":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$rateMe:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    sget v6, Lcom/droidhang/crosspromotion/R$drawable;->button_rate:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    sget v6, Lcom/droidhang/crosspromotion/R$drawable;->featured_frame_rate:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 225
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v6, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    invoke-static {v6}, Lcom/droidhang/crosspromotion/Model;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "imgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 229
    .local v3, "myBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method
