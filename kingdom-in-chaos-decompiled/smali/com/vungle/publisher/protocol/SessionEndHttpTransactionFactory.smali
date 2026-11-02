.class public Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;
.super Lcom/vungle/publisher/net/http/HttpTransaction$Factory;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/protocol/SessionEndHttpRequest$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/vungle/publisher/net/http/HttpTransaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;->a:Lcom/vungle/publisher/protocol/SessionEndHttpRequest$Factory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vungle/publisher/protocol/SessionEndHttpRequest$Factory;->a(JJ)Lcom/vungle/publisher/protocol/SessionEndHttpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;->b:Lcom/vungle/publisher/net/http/FireAndForgetHttpResponseHandler;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/net/http/HttpTransaction$Factory;->a(Lcom/vungle/publisher/net/http/HttpRequest;Lcom/vungle/publisher/cg;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    return-object v0
.end method
