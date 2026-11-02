.class public Lcom/tapjoy/TapjoyHttpURLResponse;
.super Ljava/lang/Object;
.source "TapjoyHttpURLResponse.java"


# instance fields
.field public contentLength:I

.field public headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public redirectURL:Ljava/lang/String;

.field public response:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "headerKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v1, ""

    .line 40
    .local v1, "headerString":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapjoy/TapjoyHttpURLResponse;->headerFields:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/tapjoy/TapjoyHttpURLResponse;->headerFields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    .local v0, "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headerString":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 47
    .end local v0    # "header":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "headerString":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
