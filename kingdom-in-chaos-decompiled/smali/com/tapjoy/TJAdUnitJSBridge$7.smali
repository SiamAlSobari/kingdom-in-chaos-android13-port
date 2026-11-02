.class Lcom/tapjoy/TJAdUnitJSBridge$7;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field final synthetic val$buttonVisible:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$7;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$7;->val$buttonVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$7;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->access$300(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitView;

    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$7;->val$buttonVisible:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitView;->setCloseButtonVisibility(Z)V

    .line 1173
    return-void
.end method
