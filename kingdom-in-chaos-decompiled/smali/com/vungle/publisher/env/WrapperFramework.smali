.class public final enum Lcom/vungle/publisher/env/WrapperFramework;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/env/WrapperFramework;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/vungle/publisher/env/WrapperFramework;

.field public static final enum air:Lcom/vungle/publisher/env/WrapperFramework;

.field public static final enum corona:Lcom/vungle/publisher/env/WrapperFramework;

.field public static final enum marmalade:Lcom/vungle/publisher/env/WrapperFramework;

.field public static final enum unity:Lcom/vungle/publisher/env/WrapperFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/vungle/publisher/env/WrapperFramework;

    const-string v1, "air"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/env/WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/env/WrapperFramework;->air:Lcom/vungle/publisher/env/WrapperFramework;

    .line 8
    new-instance v0, Lcom/vungle/publisher/env/WrapperFramework;

    const-string v1, "corona"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/env/WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/env/WrapperFramework;->corona:Lcom/vungle/publisher/env/WrapperFramework;

    .line 9
    new-instance v0, Lcom/vungle/publisher/env/WrapperFramework;

    const-string v1, "marmalade"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/env/WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/env/WrapperFramework;->marmalade:Lcom/vungle/publisher/env/WrapperFramework;

    .line 10
    new-instance v0, Lcom/vungle/publisher/env/WrapperFramework;

    const-string v1, "unity"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/env/WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/env/WrapperFramework;->unity:Lcom/vungle/publisher/env/WrapperFramework;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/env/WrapperFramework;

    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->air:Lcom/vungle/publisher/env/WrapperFramework;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->corona:Lcom/vungle/publisher/env/WrapperFramework;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->marmalade:Lcom/vungle/publisher/env/WrapperFramework;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->unity:Lcom/vungle/publisher/env/WrapperFramework;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/env/WrapperFramework;->a:[Lcom/vungle/publisher/env/WrapperFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/env/WrapperFramework;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/vungle/publisher/env/WrapperFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/WrapperFramework;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/env/WrapperFramework;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/vungle/publisher/env/WrapperFramework;->a:[Lcom/vungle/publisher/env/WrapperFramework;

    invoke-virtual {v0}, [Lcom/vungle/publisher/env/WrapperFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/env/WrapperFramework;

    return-object v0
.end method
