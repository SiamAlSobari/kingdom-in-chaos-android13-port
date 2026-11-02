.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/vungle/publisher/by;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/by;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V
    .locals 4
    .param p1, "module"    # Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .prologue
    .line 427
    const-string v0, "com.vungle.publisher.by"

    const/4 v1, 0x1

    const-string v2, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v3, "provideGoogleLocationServicesDetailedLocationProvider"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 428
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;->setLibrary(Z)V

    .line 430
    return-void
.end method


# virtual methods
.method public final get()Lcom/vungle/publisher/by;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->b()Lcom/vungle/publisher/by;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationServicesDetailedLocationProviderProvidesAdapter;->get()Lcom/vungle/publisher/by;

    move-result-object v0

    return-object v0
.end method
