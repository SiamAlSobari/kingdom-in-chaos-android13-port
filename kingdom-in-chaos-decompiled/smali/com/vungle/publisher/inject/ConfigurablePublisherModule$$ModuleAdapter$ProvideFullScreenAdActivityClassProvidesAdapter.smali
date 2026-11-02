.class public final Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;
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
    name = "ProvideFullScreenAdActivityClassProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Ljava/lang/Class;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Class;",
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

    .line 604
    const-string v0, "@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class"

    const-string v1, "com.vungle.publisher.inject.ConfigurablePublisherModule"

    const-string v2, "provideFullScreenAdActivityClass"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 605
    iput-object p1, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    .line 606
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;->setLibrary(Z)V

    .line 607
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;->a:Lcom/vungle/publisher/inject/ConfigurablePublisherModule;

    iget-object v1, v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->d:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-class v0, Lcom/vungle/publisher/FullScreenAdActivity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/vungle/publisher/inject/ConfigurablePublisherModule;->d:Ljava/lang/Class;

    goto :goto_0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/ConfigurablePublisherModule$$ModuleAdapter$ProvideFullScreenAdActivityClassProvidesAdapter;->get()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
