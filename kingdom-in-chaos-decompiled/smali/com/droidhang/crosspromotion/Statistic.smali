.class public Lcom/droidhang/crosspromotion/Statistic;
.super Ljava/lang/Object;
.source "Statistic.java"


# static fields
.field private static final STATISTIC_URL:Ljava/lang/String; = "http://games.droidhang.com/featuredgame/prompt_app.php"

.field private static final TAG:Ljava/lang/String; = "CrossPromotion_Statistic"

.field private static _context:Landroid/app/Activity;

.field private static _httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clickDialog(Ljava/lang/String;)V
    .locals 5
    .param p0, "destAppId"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "CrossPromotion_Statistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickDialog destAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/droidhang/crosspromotion/Statistic;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    const-string v1, "http://games.droidhang.com/featuredgame/prompt_app.php"

    const-string v2, "3"

    invoke-static {p0, v2}, Lcom/droidhang/crosspromotion/Statistic;->getPostJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V

    .line 53
    return-void
.end method

.method static clickFullScreen(Ljava/lang/String;)V
    .locals 5
    .param p0, "destAppId"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "CrossPromotion_Statistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickFullScreen destAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/droidhang/crosspromotion/Statistic;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    const-string v1, "http://games.droidhang.com/featuredgame/prompt_app.php"

    const-string v2, "4"

    invoke-static {p0, v2}, Lcom/droidhang/crosspromotion/Statistic;->getPostJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V

    .line 59
    return-void
.end method

.method static displayDialog(Ljava/lang/String;)V
    .locals 5
    .param p0, "destAppId"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "CrossPromotion_Statistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog destAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/droidhang/crosspromotion/Statistic;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    const-string v1, "http://games.droidhang.com/featuredgame/prompt_app.php"

    const-string v2, "1"

    invoke-static {p0, v2}, Lcom/droidhang/crosspromotion/Statistic;->getPostJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V

    .line 41
    return-void
.end method

.method static displayFullScreen(Ljava/lang/String;)V
    .locals 5
    .param p0, "destAppId"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "CrossPromotion_Statistic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayFullScreen destAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/droidhang/crosspromotion/Statistic;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    const-string v1, "http://games.droidhang.com/featuredgame/prompt_app.php"

    const-string v2, "2"

    invoke-static {p0, v2}, Lcom/droidhang/crosspromotion/Statistic;->getPostJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V

    .line 47
    return-void
.end method

.method private static getPostJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "destAppId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "dstAppID"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v2, "sourceAppID"

    sget-object v3, Lcom/droidhang/crosspromotion/Statistic;->_context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static init(Landroid/app/Activity;Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "httpThread"    # Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    .prologue
    .line 18
    sput-object p0, Lcom/droidhang/crosspromotion/Statistic;->_context:Landroid/app/Activity;

    .line 19
    sput-object p1, Lcom/droidhang/crosspromotion/Statistic;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    .line 20
    return-void
.end method
