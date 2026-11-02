.class Lcom/tapjoy/TJEvent$2;
.super Ljava/lang/Object;
.source "TJEvent.java"

# interfaces
.implements Lcom/tapjoy/TapjoyCacheNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJEvent;->eventSuccess(Lcom/tapjoy/TapjoyHttpURLResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEvent;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJEvent;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tapjoy/TJEvent$2;->this$0:Lcom/tapjoy/TJEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cachingComplete(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tapjoy/TJEvent$2;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v0, p1}, Lcom/tapjoy/TJEvent;->access$400(Lcom/tapjoy/TJEvent;I)V

    .line 272
    return-void
.end method
