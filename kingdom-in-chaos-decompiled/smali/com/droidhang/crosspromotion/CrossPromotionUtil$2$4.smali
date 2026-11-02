.class Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;
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
    .line 167
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v2, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$rateMe:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "d"

    invoke-static {v2, v3, v4}, Lcom/droidhang/crosspromotion/Model;->openGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->dismiss()V

    .line 175
    iget-object v2, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$rateMe:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->access$200()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "crosspromotion"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ratedMe"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    const-string v2, "CrossPromotion"

    const-string v3, "displayDialog rateMe, clicked, never display again!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$4;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->val$item:Lcom/droidhang/crosspromotion/Model$AppItem;

    iget-object v2, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v2}, Lcom/droidhang/crosspromotion/Statistic;->clickDialog(Ljava/lang/String;)V

    goto :goto_1
.end method
