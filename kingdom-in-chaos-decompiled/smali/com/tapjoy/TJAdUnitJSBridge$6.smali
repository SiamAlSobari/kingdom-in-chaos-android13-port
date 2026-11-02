.class Lcom/tapjoy/TJAdUnitJSBridge$6;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"

# interfaces
.implements Lcom/tapjoy/TJEventRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->sendActionCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field final synthetic val$callbackID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->val$callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 5

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->val$callbackID:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public completed()V
    .locals 5

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->val$callbackID:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    return-void
.end method
