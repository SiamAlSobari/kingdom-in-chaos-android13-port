.class public Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;
.super Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;
.source "vungle"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/vungle/publisher/by;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider",
        "<",
        "Lcom/google/android/gms/common/api/GoogleApiClient;",
        ">;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/vungle/publisher/by;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "Google Play Services LocationServices"

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method protected final synthetic c(Ljava/lang/Object;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/location/GoogleLocationServicesDetailedLocationProvider;->b:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->d()V

    .line 73
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 85
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 77
    const-string v0, "VungleLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connection suspended for Google Play Services LocationServices "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
