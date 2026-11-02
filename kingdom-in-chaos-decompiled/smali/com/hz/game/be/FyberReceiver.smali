.class public Lcom/hz/game/be/FyberReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FyberReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10
    new-instance v0, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;

    invoke-direct {v0}, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;-><init>()V

    .line 12
    .local v0, "spInstallReferrerReceiver":Lcom/sponsorpay/advertiser/InstallReferrerReceiver;
    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/advertiser/InstallReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    return-void
.end method
