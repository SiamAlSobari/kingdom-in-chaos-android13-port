.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;
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
    name = "ProvideWrapperFrameworkVersionProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/String;",
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
    const/4 v3, 0x0

    .line 1050
    const-string v0, "@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String"

    const-string v1, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v2, "provideWrapperFrameworkVersion"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1051
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 1052
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;->setLibrary(Z)V

    .line 1053
    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideWrapperFrameworkVersionProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    iget-object v0, v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->f:Ljava/lang/String;

    return-object v0
.end method
