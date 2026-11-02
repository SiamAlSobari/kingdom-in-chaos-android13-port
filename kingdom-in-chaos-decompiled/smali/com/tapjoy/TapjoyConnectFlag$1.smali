.class final Lcom/tapjoy/TapjoyConnectFlag$1;
.super Ljava/util/Hashtable;
.source "TapjoyConnectFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 114
    const-string v0, "TJC_SERVICE_URL"

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "TJC_EVENT_SERVICE_URL"

    const-string v1, "https://events.tapjoy.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
