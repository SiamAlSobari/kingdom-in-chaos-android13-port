.class Lcom/tapjoy/TJAdUnitJSBridge$1;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"

# interfaces
.implements Lcom/tapjoy/TJWebViewJSInterfaceNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitJSBridge;->access$000(Lcom/tapjoy/TJAdUnitJSBridge;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "callbackID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "callbackId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 118
    :goto_0
    :try_start_1
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    const-class v4, Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/json/JSONObject;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 120
    .local v3, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .end local v0    # "callbackID":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0    # "callbackID":Ljava/lang/String;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v8

    invoke-virtual {v4, v0, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
