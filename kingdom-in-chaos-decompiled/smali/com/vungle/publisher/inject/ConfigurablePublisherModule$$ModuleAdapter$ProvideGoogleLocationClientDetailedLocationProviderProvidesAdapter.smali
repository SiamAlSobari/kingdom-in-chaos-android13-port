.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;
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
    name = "ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/vungle/publisher/bx;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/bx;",
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
    .line 400
    const-string v0, "com.vungle.publisher.bx"

    const/4 v1, 0x1

    const-string v2, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v3, "provideGoogleLocationClientDetailedLocationProvider"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 401
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;->setLibrary(Z)V

    .line 403
    return-void
.end method


# virtual methods
.method public final get()Lcom/vungle/publisher/bx;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->a()Lcom/vungle/publisher/bx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideGoogleLocationClientDetailedLocationProviderProvidesAdapter;->get()Lcom/vungle/publisher/bx;

    move-result-object v0

    return-object v0
.end method
