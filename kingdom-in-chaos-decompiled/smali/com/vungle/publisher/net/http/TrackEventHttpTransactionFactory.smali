.class public Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;
.super Lcom/vungle/publisher/net/http/HttpTransaction$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory$1;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/net/http/TrackEventHttpRequest$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/net/http/TrackEventHttpResponseHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/lang/String;)Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/net/http/HttpTransaction;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/net/http/TrackEventHttpResponseHandler;

    .line 24
    sget-object v1, Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory$1;->a:[I

    invoke-virtual {p2}, Lcom/vungle/publisher/db/model/EventTracking$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 34
    iput v3, v0, Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;->h:I

    .line 35
    const/16 v1, 0xa

    iput v1, v0, Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;->g:I

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;->a:Lcom/vungle/publisher/net/http/TrackEventHttpRequest$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/net/http/TrackEventHttpRequest$Factory;->b()Lcom/vungle/publisher/net/http/HttpRequest;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/net/http/TrackEventHttpRequest;

    iput-object p1, v1, Lcom/vungle/publisher/net/http/TrackEventHttpRequest;->e:Lcom/vungle/publisher/db/model/Ad;

    iput-object p2, v1, Lcom/vungle/publisher/net/http/TrackEventHttpRequest;->f:Lcom/vungle/publisher/db/model/EventTracking$a;

    iput-object p3, v1, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    invoke-super {p0, v1, v0}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;->a(Lcom/vungle/publisher/net/http/HttpRequest;Lcom/vungle/publisher/cg;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_0
    iput-boolean v3, v0, Lcom/vungle/publisher/net/http/TrackEventHttpResponseHandler;->a:Z

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
