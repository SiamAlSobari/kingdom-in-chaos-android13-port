.class public final Lcom/vungle/publisher/cf;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public final a:Ljava/net/HttpURLConnection;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ce;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vungle/publisher/cf;->a:Ljava/net/HttpURLConnection;

    .line 33
    iput-object p3, p0, Lcom/vungle/publisher/cf;->c:Ljava/util/List;

    .line 34
    iput p2, p0, Lcom/vungle/publisher/cf;->b:I

    .line 35
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/cf;->d:Ljava/lang/String;

    .line 36
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
