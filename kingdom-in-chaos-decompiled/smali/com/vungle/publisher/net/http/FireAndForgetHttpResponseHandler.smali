.class public Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;
.super Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;->h:I

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/publisher/net/http/MaxRetryAgeHttpResponseHandler;->g:I

    .line 20
    return-void
.end method
