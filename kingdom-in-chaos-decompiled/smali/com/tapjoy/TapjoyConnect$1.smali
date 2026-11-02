.class final Lcom/tapjoy/TapjoyConnect$1;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"

# interfaces
.implements Lcom/tapjoy/TapjoyConnectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect$1;->val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect$1;->val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v0}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    .line 131
    :cond_0
    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .prologue
    .line 103
    new-instance v1, Lcom/tapjoy/TJCOffers;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$002(Lcom/tapjoy/TJCOffers;)Lcom/tapjoy/TJCOffers;

    .line 104
    new-instance v1, Lcom/tapjoy/TJPoints;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJPoints;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$102(Lcom/tapjoy/TJPoints;)Lcom/tapjoy/TJPoints;

    .line 105
    new-instance v1, Lcom/tapjoy/TapjoyFullScreenAd;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAd;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$202(Lcom/tapjoy/TapjoyFullScreenAd;)Lcom/tapjoy/TapjoyFullScreenAd;

    .line 106
    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$302(Lcom/tapjoy/TapjoyDisplayAd;)Lcom/tapjoy/TapjoyDisplayAd;

    .line 107
    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$402(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    .line 108
    new-instance v1, Lcom/tapjoy/TapjoyEvent;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyEvent;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$502(Lcom/tapjoy/TapjoyEvent;)Lcom/tapjoy/TapjoyEvent;

    .line 109
    new-instance v1, Lcom/tapjoy/TapjoyVideo;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$602(Lcom/tapjoy/TapjoyVideo;)Lcom/tapjoy/TapjoyVideo;

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->access$702(Z)Z

    .line 121
    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect$1;->val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect$1;->val$publisherNotifier:Lcom/tapjoy/TapjoyConnectNotifier;

    invoke-interface {v1}, Lcom/tapjoy/TapjoyConnectNotifier;->connectSuccess()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnect$1;->connectFail()V

    goto :goto_0
.end method
