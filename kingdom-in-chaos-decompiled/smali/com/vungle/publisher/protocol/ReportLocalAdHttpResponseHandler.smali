.class Lcom/vungle/publisher/protocol/ReportLocalAdHttpResponseHandler;
.super Lcom/vungle/publisher/cj;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/cj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cj;->a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V

    .line 21
    iget-object v1, p0, Lcom/vungle/publisher/protocol/ReportLocalAdHttpResponseHandler;->b:Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;

    iget-object v0, p1, Lcom/vungle/publisher/net/http/HttpTransaction;->a:Lcom/vungle/publisher/net/http/HttpRequest;

    check-cast v0, Lcom/vungle/publisher/protocol/ReportLocalAdHttpRequest;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/ReportAdHttpRequest;->g:Lcom/vungle/publisher/protocol/message/ReportAd;

    check-cast v0, Lcom/vungle/publisher/protocol/message/ReportLocalAd;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/message/ReportLocalAd;->c()Lcom/vungle/publisher/protocol/message/RequestAd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;

    iget-object v0, v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;->g:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/protocol/EventTrackingHttpLogEntryDeleteDelegate;->a(Ljava/util/List;)I

    .line 26
    return-void
.end method
