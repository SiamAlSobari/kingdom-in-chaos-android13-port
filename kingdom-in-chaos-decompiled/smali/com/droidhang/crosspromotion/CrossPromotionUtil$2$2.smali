.class Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$2;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$2;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    .line 148
    .local v0, "vManager":Landroid/view/ViewManager;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 150
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 153
    .end local v0    # "vManager":Landroid/view/ViewManager;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$102(Z)Z

    .line 154
    return-void
.end method
