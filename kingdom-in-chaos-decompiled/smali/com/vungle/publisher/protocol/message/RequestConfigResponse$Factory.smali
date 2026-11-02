.class public Lcom/vungle/publisher/protocol/message/RequestConfigResponse$Factory;
.super Lcom/vungle/publisher/protocol/message/JsonDeserializationFactory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/JsonDeserializationFactory",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestConfigResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/JsonDeserializationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;-><init>()V

    return-object v0
.end method

.method protected final synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_1

    new-instance v1, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;

    invoke-direct {v1}, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;-><init>()V

    const-string v2, "optIn"

    invoke-static {p1, v2}, Lcom/vungle/publisher/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->a:Ljava/lang/Boolean;

    const-string v2, "updateDelay"

    invoke-static {p1, v2}, Lcom/vungle/publisher/bu;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->b:Ljava/lang/Integer;

    const-string v2, "threshold"

    invoke-static {p1, v2}, Lcom/vungle/publisher/bu;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->c:Ljava/lang/Integer;

    const-string v2, "connection"

    const-class v3, Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;

    invoke-static {p1, v2}, Lcom/vungle/publisher/bu;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;

    iput-object v0, v1, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->d:Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    new-array v0, p1, [Lcom/vungle/publisher/protocol/message/RequestConfigResponse;

    return-object v0
.end method
