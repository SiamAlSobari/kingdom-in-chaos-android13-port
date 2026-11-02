.class public Lcom/vungle/publisher/Demographic;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/Demographic$Gender;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lcom/vungle/publisher/Demographic$Gender;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/Demographic;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGender()Lcom/vungle/publisher/Demographic$Gender;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/Demographic;->b:Lcom/vungle/publisher/Demographic$Gender;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/Demographic;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/Demographic;->b:Lcom/vungle/publisher/Demographic$Gender;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAge(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/Integer;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vungle/publisher/Demographic;->a:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method public setGender(Lcom/vungle/publisher/Demographic$Gender;)V
    .locals 0
    .param p1, "gender"    # Lcom/vungle/publisher/Demographic$Gender;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vungle/publisher/Demographic;->b:Lcom/vungle/publisher/Demographic$Gender;

    .line 53
    return-void
.end method
