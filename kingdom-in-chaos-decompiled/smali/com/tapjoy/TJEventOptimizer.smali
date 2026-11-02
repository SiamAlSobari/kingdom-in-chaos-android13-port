.class public Lcom/tapjoy/TJEventOptimizer;
.super Landroid/webkit/WebView;
.source "TJEventOptimizer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;,
        Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;,
        Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static eventCount:I

.field private static eventOptimizer:Lcom/tapjoy/TJEventOptimizer;

.field private static initLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private bridge:Lcom/tapjoy/TJAdUnitJSBridge;

.field private ctx:Landroid/content/Context;

.field private events:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJEvent;",
            ">;"
        }
    .end annotation
.end field

.field private urlParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "TJEventOptimizer"

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJEventOptimizer;->eventCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer;->ctx:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V

    iput-object v0, p0, Lcom/tapjoy/TJEventOptimizer;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 44
    invoke-virtual {p0}, Lcom/tapjoy/TJEventOptimizer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    new-instance v0, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$TJEventWebViewClient;-><init>(Lcom/tapjoy/TJEventOptimizer;Lcom/tapjoy/TJEventOptimizer$1;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    new-instance v0, Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;-><init>(Lcom/tapjoy/TJEventOptimizer;Lcom/tapjoy/TJEventOptimizer$1;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events/proxy?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->loadUrl(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJEventOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/tapjoy/TJEventOptimizer$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJEventOptimizer;

    .prologue
    .line 23
    sput-object p0, Lcom/tapjoy/TJEventOptimizer;->eventOptimizer:Lcom/tapjoy/TJEventOptimizer;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tapjoy/TJEventOptimizer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJEventOptimizer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TJEventOptimizer;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->eventOptimizer:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v2, Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;

    const-string v3, "Initializing event optimizer"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/tapjoy/TJEventOptimizer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    new-instance v1, Lcom/tapjoy/TJEventOptimizer$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJEventOptimizer$1;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "mainRunnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 82
    :goto_0
    sget-object v2, Lcom/tapjoy/TJEventOptimizer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 83
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public checkEvent(Lcom/tapjoy/TJEvent;)V
    .locals 8
    .param p1, "evt"    # Lcom/tapjoy/TJEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/tapjoy/TJEventOptimizer;->eventCount:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/tapjoy/TJEventOptimizer;->eventCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->urlParams:Ljava/util/Map;

    .line 111
    iget-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->urlParams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getParameters()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    iget-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->urlParams:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->urlParams:Ljava/util/Map;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    .local v3, "paramsJSON":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "params":Ljava/lang/String;
    iget-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/tapjoy/TJEventOptimizer$2;

    invoke-direct {v1, p0, v4, v2}, Lcom/tapjoy/TJEventOptimizer$2;-><init>(Lcom/tapjoy/TJEventOptimizer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v1, "mainRunnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v5, p0, Lcom/tapjoy/TJEventOptimizer;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public eventOptimizationCallback(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "shouldSend"    # Z

    .prologue
    .line 92
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEvent;

    .line 93
    .local v0, "evt":Lcom/tapjoy/TJEvent;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Lcom/tapjoy/TJEvent;->processSendCallback(Z)V

    .line 96
    sget-object v1, Lcom/tapjoy/TJEventOptimizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event optimization result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer;->events:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method
