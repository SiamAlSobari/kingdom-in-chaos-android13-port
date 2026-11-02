.class Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;
.super Ljava/lang/Object;
.source "TDLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private m_currentBestLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->m_currentBestLocation:Landroid/location/Location;

    .line 19
    return-void
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 62
    const/4 v10, 0x1

    .line 105
    :goto_0
    return v10

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 67
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 68
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 69
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 73
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 75
    const/4 v10, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 68
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 69
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 78
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 80
    const/4 v10, 0x0

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 85
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 86
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 87
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 90
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_a

    if-nez v11, :cond_9

    const/4 v1, 0x1

    .line 93
    .local v1, "isFromSameProvider":Z
    :goto_7
    if-eqz v3, :cond_b

    .line 95
    const/4 v10, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 86
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 87
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 90
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7

    .line 97
    .restart local v1    # "isFromSameProvider":Z
    :cond_b
    if-eqz v4, :cond_c

    if-nez v2, :cond_c

    .line 99
    const/4 v10, 0x1

    goto :goto_0

    .line 101
    :cond_c
    if-eqz v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    .line 103
    const/4 v10, 0x1

    goto :goto_0

    .line 105
    :cond_d
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
    .param p1, "provider2"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->m_currentBestLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->m_currentBestLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onLocationChanged() : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->m_currentBestLocation:Landroid/location/Location;

    if-nez v7, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->m_currentBestLocation:Landroid/location/Location;

    .line 29
    :cond_1
    return-void

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    const-wide/32 v8, 0x1d4c0

    cmp-long v0, v4, v8

    if-lez v0, :cond_5

    move v3, v1

    :goto_1
    const-wide/32 v8, -0x1d4c0

    cmp-long v0, v4, v8

    if-gez v0, :cond_6

    move v0, v1

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_7

    move v6, v1

    :goto_3
    if-nez v3, :cond_0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v5, v1

    :goto_4
    if-gez v0, :cond_9

    move v4, v1

    :goto_5
    const/16 v3, 0xc8

    if-le v0, v3, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_c

    if-nez v7, :cond_b

    move v3, v1

    :goto_7
    if-nez v4, :cond_0

    if-eqz v6, :cond_3

    if-eqz v5, :cond_0

    :cond_3
    if-eqz v6, :cond_4

    if-nez v0, :cond_4

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v6, v2

    goto :goto_3

    :cond_8
    move v5, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProviderDisabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProviderEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 46
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStatusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string v0, "available "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "temporarily unavailable"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "Out of Service"

    goto :goto_0

    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method
