.class public Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;
.super Ljava/lang/Object;
.source "SponsorPayAdvertiserState.java"


# static fields
.field public static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "SponsorPayAdvertiserState"

.field private static final STATE_GOT_SUCCESSFUL_RESPONSE_KEY:Ljava/lang/String; = "SponsorPayAdvertiserState"

.field private static final STATE_INSTALL_REFERRER_KEY:Ljava/lang/String; = "InstallReferrer"

.field private static final STATE_INSTALL_SUBID_KEY:Ljava/lang/String; = "InstallSubId"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "SponsorPayAdvertiserState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    .line 55
    return-void
.end method


# virtual methods
.method public getCallbackReceivedSuccessfulResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "actionId"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SponsorPayAdvertiserState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "InstallReferrer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallSubId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "InstallSubId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallbackReceivedSuccessfulResponse(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SponsorPayAdvertiserState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void

    .line 63
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public setInstallReferrer(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "InstallReferrer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public setInstallSubId(Ljava/lang/String;)V
    .locals 2
    .param p1, "subIdValue"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "InstallSubId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method
