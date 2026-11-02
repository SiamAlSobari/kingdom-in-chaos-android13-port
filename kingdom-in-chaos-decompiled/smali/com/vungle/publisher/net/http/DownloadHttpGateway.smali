.class public Lcom/vungle/publisher/net/http/DownloadHttpGateway;
.super Lcom/vungle/publisher/cd;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/net/http/DownloadHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/cd;-><init>()V

    return-void
.end method
