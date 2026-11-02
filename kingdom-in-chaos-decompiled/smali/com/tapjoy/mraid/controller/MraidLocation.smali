.class public Lcom/tapjoy/mraid/controller/MraidLocation;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "MraidLocation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAID Location"


# instance fields
.field final INTERVAL:I

.field private allowLocationServices:Z

.field private hasPermission:Z

.field private mGps:Lcom/tapjoy/mraid/listener/Loc;

.field private mLocListenerCount:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetwork:Lcom/tapjoy/mraid/listener/Loc;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 3
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3e8

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 23
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->hasPermission:Z

    .line 24
    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->INTERVAL:I

    .line 28
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->allowLocationServices:Z

    .line 39
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocationManager:Landroid/location/LocationManager;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    .line 46
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->hasPermission:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static formatLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .param p0, "loc"    # Landroid/location/Location;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->allowLocationServices:Z

    .line 57
    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->allowLocationServices:Z

    return v0
.end method

.method public fail()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "MRAID Location"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "window.mraidview.fireErrorEvent(\"Location cannot be identified\", \"OrmmaLocationController\")"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v3, "MRAID Location"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocation: hasPermission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->hasPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->hasPermission:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 94
    :goto_0
    return-object v3

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocationManager:Landroid/location/LocationManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "provider":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "lastKnown":Landroid/location/Location;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v5, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 90
    :cond_2
    const-string v3, "MRAID Location"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_3

    .line 92
    invoke-static {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 94
    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    .line 108
    :cond_1
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    .line 109
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    .line 116
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mLocListenerCount:I

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mNetwork:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mGps:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    .line 123
    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tapjoy/mraid/controller/MraidLocation;->formatLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "script":Ljava/lang/String;
    const-string v1, "MRAID Location"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 134
    return-void
.end method
