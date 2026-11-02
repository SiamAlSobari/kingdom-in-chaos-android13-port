.class Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;

    iget-object v0, v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v0, v0, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lcom/droidhang/crosspromotion/Model;->openGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->dismiss()V

    .line 322
    iget-object v0, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$3;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;

    iget-object v0, v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v0, v0, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v0}, Lcom/droidhang/crosspromotion/Statistic;->clickFullScreen(Ljava/lang/String;)V

    .line 323
    return-void
.end method
