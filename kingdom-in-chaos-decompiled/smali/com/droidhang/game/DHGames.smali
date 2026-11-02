.class public Lcom/droidhang/game/DHGames;
.super Ljava/lang/Object;
.source "DHGames.java"


# static fields
.field private static final GAMEUTILS_URL:Ljava/lang/String; = "http://games.droidhang.com/gameutils/index.php"

.field private static _activity:Landroid/app/Activity;

.field private static _appid:Ljava/lang/String;

.field private static _httpThread:Lcom/droidhang/util/net/SimpleHttpThread;

.field private static _observer:Lcom/droidhang/util/net/SimpleHttpObserver;

.field private static _serverTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/droidhang/game/DHGames;->_serverTime:I

    .line 66
    new-instance v0, Lcom/droidhang/game/DHGames$1;

    invoke-direct {v0}, Lcom/droidhang/game/DHGames$1;-><init>()V

    sput-object v0, Lcom/droidhang/game/DHGames;->_observer:Lcom/droidhang/util/net/SimpleHttpObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 23
    sput p0, Lcom/droidhang/game/DHGames;->_serverTime:I

    return p0
.end method

.method private static genPostJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "did"

    sget-object v3, Lcom/droidhang/game/DHGames;->_activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/wwcd/util/AndroidUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v2, "appid"

    sget-object v3, Lcom/droidhang/game/DHGames;->_appid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getServerTime()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/droidhang/game/DHGames;->_serverTime:I

    return v0
.end method

.method public static init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "iAdId"    # Lcom/droidhang/game/ad/IAdId;
    .param p2, "videoAdCallback"    # Lcom/droidhang/game/ad/video/VideoAdCallback;

    .prologue
    .line 33
    sput-object p0, Lcom/droidhang/game/DHGames;->_activity:Landroid/app/Activity;

    .line 34
    sget-object v0, Lcom/droidhang/game/DHGames;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/droidhang/game/DHGames;->_appid:Ljava/lang/String;

    .line 36
    invoke-static {p0, p1}, Lcom/droidhang/game/ad/AdmobIDManager;->init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;)V

    .line 38
    invoke-static {p0}, Lcom/droidhang/game/ad/AdRatioManager;->init(Landroid/app/Activity;)V

    .line 39
    invoke-static {p0, p1}, Lcom/droidhang/game/ad/InterstitialAdManager;->init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;)V

    .line 40
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->init(Landroid/app/Activity;)V

    .line 41
    invoke-static {p0, p1, p2}, Lcom/droidhang/game/ad/VideoAdManager;->init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 43
    new-instance v0, Lcom/droidhang/util/net/SimpleHttpThread;

    invoke-direct {v0}, Lcom/droidhang/util/net/SimpleHttpThread;-><init>()V

    sput-object v0, Lcom/droidhang/game/DHGames;->_httpThread:Lcom/droidhang/util/net/SimpleHttpThread;

    .line 44
    sget-object v0, Lcom/droidhang/game/DHGames;->_httpThread:Lcom/droidhang/util/net/SimpleHttpThread;

    invoke-virtual {v0}, Lcom/droidhang/util/net/SimpleHttpThread;->init()V

    .line 45
    sget-object v0, Lcom/droidhang/game/DHGames;->_httpThread:Lcom/droidhang/util/net/SimpleHttpThread;

    const-string v1, "http://games.droidhang.com/gameutils/index.php"

    invoke-static {}, Lcom/droidhang/game/DHGames;->genPostJsonString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/droidhang/game/DHGames;->_observer:Lcom/droidhang/util/net/SimpleHttpObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/droidhang/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/util/net/SimpleHttpObserver;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public onAsyncHttpComplete(Z[B)V
    .locals 0
    .param p1, "succeed"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 119
    return-void
.end method
