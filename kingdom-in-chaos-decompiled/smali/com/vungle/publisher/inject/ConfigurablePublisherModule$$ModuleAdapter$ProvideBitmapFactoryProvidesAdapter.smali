.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;
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
    name = "ProvideBitmapFactoryProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/vungle/publisher/image/BitmapFactory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/image/BitmapFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/image/AssetBitmapFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/inject/ConfigurablePublisherModule;)V
    .locals 4
    .param p1, "module"    # Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .prologue
    .line 254
    const-string v0, "com.vungle.publisher.image.BitmapFactory"

    const/4 v1, 0x1

    const-string v2, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v3, "provideBitmapFactory"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->setLibrary(Z)V

    .line 257
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 266
    const-string v0, "com.vungle.publisher.image.AssetBitmapFactory"

    const-class v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->b:Ldagger/internal/Binding;

    .line 267
    return-void
.end method

.method public final get()Lcom/vungle/publisher/image/BitmapFactory;
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/image/AssetBitmapFactory;

    iget-object v2, v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->c:Lcom/vungle/publisher/image/BitmapFactory;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->c:Lcom/vungle/publisher/image/BitmapFactory;

    goto :goto_0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->get()Lcom/vungle/publisher/image/BitmapFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideBitmapFactoryProvidesAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method
