.class public Lcom/testin/agent/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/testin/agent/e/e;


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/location/LocationManager;

.field private d:D

.field private e:D


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/testin/agent/e/e;->b:Landroid/location/Location;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/testin/agent/e/e;->c:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/testin/agent/e/e;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/testin/agent/e/e;->c()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/e/e;->b:Landroid/location/Location;

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/e/e;->b:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/testin/agent/e/e;->b:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/testin/agent/e/e;->a(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/testin/agent/e/e;
    .locals 1

    sget-object v0, Lcom/testin/agent/e/e;->a:Lcom/testin/agent/e/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/e/e;

    invoke-direct {v0, p0}, Lcom/testin/agent/e/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/testin/agent/e/e;->a:Lcom/testin/agent/e/e;

    :cond_0
    sget-object v0, Lcom/testin/agent/e/e;->a:Lcom/testin/agent/e/e;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/testin/agent/e/e;->d:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/testin/agent/e/e;->e:D

    return-void
.end method

.method private c()Landroid/location/Location;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/testin/agent/e/e;->c:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/testin/agent/e/e;->c:Landroid/location/LocationManager;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Permission denied for fetching last known GPS location (ACCESS_FINE_LOCATION)"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/testin/agent/e/e;->d:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/testin/agent/e/e;->e:D

    return-wide v0
.end method
