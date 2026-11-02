.class Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;
.super Ljava/lang/Object;
.source "TDLocationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_accuracy:I

.field private m_context:Landroid/content/Context;

.field private m_highPowerUpdateTime:J

.field private m_location:Landroid/location/Location;

.field private m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

.field private m_locationManager:Landroid/location/LocationManager;

.field private m_lowPowerUpdateTime:J

.field private m_paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_paused:Z

    return-void
.end method

.method private enabled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastLocation()V
    .locals 14

    .prologue
    .line 77
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 78
    .local v1, "bestAccuracy":F
    const-wide/16 v3, 0x0

    .line 79
    .local v3, "bestTime":J
    const/4 v2, 0x0

    .line 81
    .local v2, "bestResult":Landroid/location/Location;
    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    .line 84
    iget-object v11, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    invoke-virtual {v11}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 87
    .local v8, "provider":Ljava/lang/String;
    iget-object v11, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    invoke-virtual {v11, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 88
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_0

    .line 90
    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getLastLocation() : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 92
    .local v0, "accuracy":F
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    .line 94
    .local v9, "time":J
    iget-wide v11, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_lowPowerUpdateTime:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_1

    cmpg-float v11, v0, v1

    if-gez v11, :cond_1

    .line 96
    move-object v2, v6

    .line 97
    move v1, v0

    .line 98
    move-wide v3, v9

    goto :goto_0

    .line 100
    :cond_1
    iget-wide v11, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_lowPowerUpdateTime:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    cmp-long v11, v9, v3

    if-lez v11, :cond_0

    .line 103
    move-object v2, v6

    .line 104
    move-wide v3, v9

    goto :goto_0

    .line 109
    .end local v0    # "accuracy":F
    .end local v6    # "location":Landroid/location/Location;
    .end local v8    # "provider":Ljava/lang/String;
    .end local v9    # "time":J
    :cond_2
    if-eqz v2, :cond_3

    .line 110
    new-instance v11, Landroid/location/Location;

    invoke-direct {v11, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v11, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_location:Landroid/location/Location;

    .line 111
    :cond_3
    return-void
.end method

.method private registerLocationServices()Z
    .locals 18

    .prologue
    .line 120
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerLocationServices: low power "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_lowPowerUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " high power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_highPowerUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with accuracy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_accuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 125
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    const-string v2, "Insufficient permissions to acquire location manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v16, 0x0

    .line 215
    :cond_0
    :goto_0
    return v16

    .line 129
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    if-eqz v1, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 134
    :cond_2
    new-instance v10, Landroid/location/Criteria;

    invoke-direct {v10}, Landroid/location/Criteria;-><init>()V

    .line 136
    .local v10, "criteria":Landroid/location/Criteria;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_accuracy:I

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setSpeedAccuracy(I)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/location/Criteria;->setVerticalAccuracy(I)V

    .line 145
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 146
    .local v5, "lowPowerCriteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 147
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "fineProvider":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 152
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fine provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "courseProvider":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 157
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "course provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_4
    if-nez v15, :cond_5

    if-nez v13, :cond_5

    .line 162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    .line 163
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    .line 164
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find location provider, possibly incorrect permissions. Check that android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION is set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 169
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->getLastLocation()V

    .line 171
    const/16 v17, 0x0

    .line 174
    .local v17, "sameProviders":Z
    if-eqz v15, :cond_6

    if-eqz v13, :cond_6

    .line 176
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 178
    :cond_6
    const/16 v16, 0x0

    .line 179
    .local v16, "registered":Z
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-direct {v1}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    .line 182
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_lowPowerUpdateTime:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 183
    const/16 v16, 0x1

    .line 184
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationManager created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    if-nez v17, :cond_7

    .line 198
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_highPowerUpdateTime:J

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 199
    const/16 v16, 0x1

    .line 201
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationManager created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :cond_7
    :goto_2
    if-nez v16, :cond_0

    .line 212
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    .line 213
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v14

    .line 188
    .local v14, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security settings error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v14    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v14

    .line 205
    .restart local v14    # "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security settings error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 115
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_location:Landroid/location/Location;

    .line 116
    return-void
.end method


# virtual methods
.method public final getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_location:Landroid/location/Location;

    .line 67
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method public final pause()V
    .locals 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_paused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_paused:Z

    .line 39
    :cond_0
    return-void
.end method

.method public final registerLocationServices(Landroid/content/Context;JJI)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lowPowerUpdateTime"    # J
    .param p4, "highPowerUpdateTime"    # J
    .param p6, "accuracy"    # I

    .prologue
    .line 23
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_context:Landroid/content/Context;

    .line 24
    iput-wide p2, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_lowPowerUpdateTime:J

    .line 25
    iput-wide p4, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_highPowerUpdateTime:J

    .line 26
    iput p6, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_accuracy:I

    .line 28
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices()Z

    move-result v0

    return v0
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_paused:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->TAG:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices()Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_paused:Z

    .line 49
    :cond_0
    return-void
.end method

.method public final unregister()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->m_locationListener:Lcom/threatmetrix/TrustDefenderMobile/TDLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 62
    :cond_0
    return-void
.end method
