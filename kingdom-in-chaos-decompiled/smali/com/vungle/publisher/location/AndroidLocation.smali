.class public Lcom/vungle/publisher/location/AndroidLocation;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bz;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    const-string v0, ""

    .line 24
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    const-string v2, "VungleLocation"

    const-string v3, "error getting ISO 3-letter language code"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Landroid/location/Location;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/vungle/publisher/location/AndroidLocation;->a:Lcom/vungle/publisher/bv;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "VungleLocation"

    const-string v2, "cannot provide detailed location - null detailed location provider"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/location/AndroidLocation;->a:Lcom/vungle/publisher/bv;

    invoke-interface {v0}, Lcom/vungle/publisher/bv;->b()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
