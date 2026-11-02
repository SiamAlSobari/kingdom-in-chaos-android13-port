.class public interface abstract Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileStandard;
.super Ljava/lang/Object;
.source "TrustDefenderMobileStandard.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract getApiKey()Ljava/lang/String;
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
.end method

.method public abstract getTimeout()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract initWithoutWebView(Landroid/content/Context;)V
.end method

.method public abstract pauseLocationServices(Z)V
.end method

.method public abstract registerLocationServices(Landroid/content/Context;)Z
.end method

.method public abstract registerLocationServices(Landroid/content/Context;JJI)Z
.end method

.method public abstract setApiKey(Ljava/lang/String;)V
.end method

.method public abstract setCompletionNotifier(Lcom/threatmetrix/TrustDefenderMobile/ProfileNotifyBase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract setCustomAttributes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setSessionID(Ljava/lang/String;)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract tidyUp()V
.end method
