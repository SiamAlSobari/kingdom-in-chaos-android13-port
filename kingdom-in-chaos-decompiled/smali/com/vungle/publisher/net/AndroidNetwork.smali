.class public Lcom/vungle/publisher/net/AndroidNetwork;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/cb;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/net/NetworkBroadcastReceiver;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/ca;
    .locals 5

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/net/AndroidNetwork;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 33
    sparse-switch v1, :sswitch_data_0

    .line 42
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown connectivity type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    sget-object v0, Lcom/vungle/publisher/ca;->b:Lcom/vungle/publisher/ca;

    goto :goto_0

    .line 39
    :sswitch_1
    sget-object v0, Lcom/vungle/publisher/ca;->a:Lcom/vungle/publisher/ca;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    const-string v2, "VungleNetwork"

    const-string v3, "error getting connectivity type"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/net/AndroidNetwork;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v2, "VungleNetwork"

    const-string v3, "error getting network operator"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
