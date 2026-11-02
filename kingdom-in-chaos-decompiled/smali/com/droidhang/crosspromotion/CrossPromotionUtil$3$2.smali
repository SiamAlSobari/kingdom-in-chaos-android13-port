.class Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$2;
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
    .line 299
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3$2;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    .line 306
    .local v0, "vManager":Landroid/view/ViewManager;
    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 308
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 311
    .end local v0    # "vManager":Landroid/view/ViewManager;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$102(Z)Z

    .line 312
    return-void
.end method
