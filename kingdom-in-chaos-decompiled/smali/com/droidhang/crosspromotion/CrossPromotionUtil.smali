.class public Lcom/droidhang/crosspromotion/CrossPromotionUtil;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossPromotion"

.field private static _context:Landroid/app/Activity;

.field private static _displaying:Z

.field private static _frameLayout:Landroid/widget/FrameLayout;

.field private static _httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

.field private static _init:Z

.field private static _view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_init:Z

    .line 29
    sput-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 25
    sput-object p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    return p0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static dismiss()V
    .locals 2

    .prologue
    .line 63
    sget-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/crosspromotion/CrossPromotionUtil$1;

    invoke-direct {v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static displayDialog()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    sget-boolean v3, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    if-eqz v3, :cond_1

    .line 234
    .local v0, "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    .local v1, "rateMe":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v5

    .line 87
    .end local v0    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    .end local v1    # "rateMe":Ljava/lang/Boolean;
    :cond_1
    const-string v3, "CrossPromotion"

    const-string v6, "displayDialog"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-boolean v3, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_init:Z

    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->getDisplayAppItem()Lcom/droidhang/crosspromotion/Model$AppItem;

    move-result-object v0

    .line 92
    .restart local v0    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 93
    .restart local v1    # "rateMe":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    const-string v3, "CrossPromotion"

    const-string v6, "displayDialog rateMe, none valid items or all installed!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    sget-object v3, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    const-string v6, "crosspromotion"

    invoke-virtual {v3, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 102
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "ratedMe"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 106
    const-string v3, "CrossPromotion"

    const-string v5, "displayDialog rateMe the first time!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_3
    sget-object v3, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    new-instance v5, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    invoke-direct {v5, v0, v1}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;-><init>(Lcom/droidhang/crosspromotion/Model$AppItem;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v5, v4

    .line 234
    goto :goto_0

    .end local v1    # "rateMe":Ljava/lang/Boolean;
    :cond_4
    move v3, v5

    .line 92
    goto :goto_1

    .line 109
    .restart local v1    # "rateMe":Ljava/lang/Boolean;
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    const-string v3, "CrossPromotion"

    const-string v4, "displayDialog rateMe, already rated, never display again!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static displayFullScreen()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
    sget-boolean v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    if-eqz v2, :cond_1

    .line 327
    .local v0, "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    :cond_0
    :goto_0
    return v1

    .line 241
    .end local v0    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    :cond_1
    const-string v2, "CrossPromotion"

    const-string v3, "displayFullScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-boolean v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_init:Z

    if-eqz v2, :cond_0

    .line 245
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->getDisplayAppItem()Lcom/droidhang/crosspromotion/Model$AppItem;

    move-result-object v0

    .line 246
    .restart local v0    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    if-nez v0, :cond_2

    .line 247
    const-string v2, "CrossPromotion"

    const-string v3, "displayFullScreen, none valid items or alrady installed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    sget-object v1, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    new-instance v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;

    invoke-direct {v2, v0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil$3;-><init>(Lcom/droidhang/crosspromotion/Model$AppItem;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 40
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->nShouldDisplayCrossPromotion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "CrossPromotion"

    const-string v1, "CrossPromotion disabled! nShouldDisplayCrossPromotion = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    sput-object p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_init:Z

    .line 48
    sput-object p1, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_frameLayout:Landroid/widget/FrameLayout;

    .line 49
    new-instance v0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    invoke-direct {v0}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;-><init>()V

    sput-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    .line 50
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    invoke-virtual {v0}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->init()V

    .line 51
    const-string v0, "CrossPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrossPromotion init! my packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    invoke-static {p0, v0}, Lcom/droidhang/crosspromotion/Model;->init(Landroid/app/Activity;Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;)V

    .line 56
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->loadCacheData()V

    .line 57
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->requestData()V

    .line 58
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    invoke-static {p0, v0}, Lcom/droidhang/crosspromotion/Statistic;->init(Landroid/app/Activity;Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;)V

    .line 59
    sget-object v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    invoke-static {p0, v0}, Lcom/droidhang/crosspromotion/InstallReferrerStatistic;->init(Landroid/app/Activity;Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;)V

    goto :goto_0
.end method

.method public static isDisplaying()I
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->_displaying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native nOnExitGame()V
.end method

.method public static native nShouldDisplayCrossPromotion()Z
.end method
