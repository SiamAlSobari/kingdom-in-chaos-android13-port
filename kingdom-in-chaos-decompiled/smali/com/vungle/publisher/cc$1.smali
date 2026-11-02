.class final Lcom/vungle/publisher/cc$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cc;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/util/Map;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/db/model/Ad;

.field final synthetic b:Lcom/vungle/publisher/db/model/EventTracking$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/vungle/publisher/cc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cc;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vungle/publisher/cc$1;->e:Lcom/vungle/publisher/cc;

    iput-object p2, p0, Lcom/vungle/publisher/cc$1;->a:Lcom/vungle/publisher/db/model/Ad;

    iput-object p3, p0, Lcom/vungle/publisher/cc$1;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    iput-object p4, p0, Lcom/vungle/publisher/cc$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/publisher/cc$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/cc$1;->e:Lcom/vungle/publisher/cc;

    iget-object v0, v0, Lcom/vungle/publisher/cc;->a:Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;

    iget-object v1, p0, Lcom/vungle/publisher/cc$1;->a:Lcom/vungle/publisher/db/model/Ad;

    iget-object v2, p0, Lcom/vungle/publisher/cc$1;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    iget-object v3, p0, Lcom/vungle/publisher/cc$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/publisher/cc$1;->d:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/vungle/publisher/cc;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/lang/String;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/cc$1;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
