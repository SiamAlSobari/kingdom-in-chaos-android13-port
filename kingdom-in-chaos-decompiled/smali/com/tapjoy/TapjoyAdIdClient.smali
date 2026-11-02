.class public Lcom/tapjoy/TapjoyAdIdClient;
.super Ljava/lang/Object;
.source "TapjoyAdIdClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyAdIdClient"


# instance fields
.field private adTrackingEnabled:Z

.field private advertisingID:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tapjoy/TapjoyAdIdClient;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/TapjoyAdIdClient;->advertisingID:Ljava/lang/String;

    return-object v0
.end method

.method public isAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyAdIdClient;->adTrackingEnabled:Z

    return v0
.end method

.method public setupAdIdInfo()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v5, p0, Lcom/tapjoy/TapjoyAdIdClient;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tapjoy/TapjoyAdIdClient;->advertisingID:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/tapjoy/TapjoyAdIdClient;->adTrackingEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_1
    return v3

    :cond_0
    move v5, v4

    .line 31
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 36
    goto :goto_1

    .line 38
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "err":Ljava/lang/Error;
    move v3, v4

    .line 40
    goto :goto_1
.end method

.method public setupAdIdInfoReflection()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 57
    :try_start_0
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "adCls":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Class;

    .line 59
    .local v2, "args":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v2, v7

    .line 61
    const-string v7, "getAdvertisingIdInfo"

    invoke-virtual {v0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 63
    .local v6, "getInfoMethod":Ljava/lang/reflect/Method;
    const-string v7, "TapjoyAdIdClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found method: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/tapjoy/TapjoyAdIdClient;->context:Landroid/content/Context;

    aput-object v11, v7, v10

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "adInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v10, "isLimitAdTrackingEnabled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 68
    .local v4, "getEnabledMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v10, "getId"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 69
    .local v5, "getIdMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyAdIdClient;->adTrackingEnabled:Z

    .line 70
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/tapjoy/TapjoyAdIdClient;->advertisingID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 76
    .end local v0    # "adCls":Ljava/lang/Class;
    .end local v1    # "adInfo":Ljava/lang/Object;
    .end local v2    # "args":[Ljava/lang/Class;
    .end local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :goto_1
    return v7

    .restart local v0    # "adCls":Ljava/lang/Class;
    .restart local v1    # "adInfo":Ljava/lang/Object;
    .restart local v2    # "args":[Ljava/lang/Class;
    .restart local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :cond_0
    move v7, v9

    .line 69
    goto :goto_0

    .line 71
    .end local v0    # "adCls":Ljava/lang/Class;
    .end local v1    # "adInfo":Ljava/lang/Object;
    .end local v2    # "args":[Ljava/lang/Class;
    .end local v4    # "getEnabledMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getInfoMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move v7, v9

    .line 73
    goto :goto_1
.end method
