This folder contains the latest Botania release for each significant Minecraft version
from Botania's inception to the time of writing, organized by Minecraft version.

The mod platforms can be downloaded from the following sites:
* MinecraftForge: https://files.minecraftforge.net/
* Fabric Loader: https://fabricmc.net/use/installer/
* Fabric API: https://www.curseforge.com/minecraft/mc-mods/fabric-api or
  https://modrinth.com/mod/fabric-api

Mod dependencies for Botania are included in the folder:
* Baubles for 1.12 and earlier Forge versions
* Curios for post-1.12 Forge versions
* Trinkets for post-1.12 Fabric versions
* Patchouli for post-1.14 versions
* Fabric API for all Fabric versions

Garden of Glass releases compatible with each version are also included in the folder.

Here are the tested and known-working configurations for Forge and Fabric versions, as of
the time of writing.

1.6.4:
You may need to add `-Dfml.ignoreInvalidMinecraftCertificates=true` to your JVM arguments
for the game to launch.

- Java 8
- MinecraftForge 9.11.1.1345

1.7.10:
- Java 8
- MinecraftForge 10.13.4.1614
- Baubles 1.0.1.10

1.8.9:
- Java 8
- MinecraftForge 11.15.1.2318
- Baubles 1.1.3.0

1.9.4:
- Java 8
- MinecraftForge 12.17.0.2051 (2317 does not appear to work)
- Baubles 1.2.1.0

1.10.2:
- Java 8
- MinecraftForge 12.18.3.2511
- Baubles 1.3.13

1.11.2:
- Java 8
- MinecraftForge 13.20.1.2588
- Baubles 1.4.6

1.12.2:
- Java 8
- MinecraftForge 14.23.5.2859
- Baubles 1.5.2

1.14.4:
- Java 8
- MinecraftForge 28.2.26
- Patchouli 1.1-27
- Curios 1.0.6.1

1.15.2:
- Java 8
- MinecraftForge 31.2.57
- Patchouli 1.2-35
- Curios 2.0.2.7

1.16.5:
- Java 8
- MinecraftForge 36.2.34
- Patchouli 1.16.4-53.3
- Curios 4.1.0.0

1.17.1:
Note: 1.17.1 was only released for Fabric

- Java 17
- Fabric Loader 0.15.1
- Fabric API 0.46.1+1.17.1
- Patchouli 1.17.1-59-FABRIC
- Trinkets 3.0.4

1.18.2:
Beginning in 1.18, both Forge and Fabric are supported. On Forge, Curios is required,
while Trinkets is required on Fabric.  Be sure to copy the right mods to your instance,
including the right version of Patchouli.

- Java 17
- MinecraftForge 40.2.0 OR Fabric Loader 0.15.1 and Fabric API 0.77.0+1.18.2
- Patchouli 1.18.2-71.1
- Curios 5.0.9.1 (Forge) OR Trinkets 3.3.1 (Fabric)

1.19.2:
- Java 17
- MinecraftForge 43.3.0 OR Fabric Loader 0.15.1 and Fabric API 0.77.0+1.19.2
- Patchouli 1.19.2-77
- Curios 5.1.4.3 (Forge) OR Trinkets 3.4.2 (Fabric)

1.20.1:
Note that at this point, MinecraftForge was forked into a continuation called NeoForge.
Botania 1.20.1 had not yet switched support to NeoForge, so this is only tested with the
legacy MinecraftForge project.  NeoForge should also work, but there are no guarantees.

- Java 17
- MinecraftForge 47.1.3 OR Fabric Loader 0.15.1 and Fabric API 0.91.0+1.20.1
- Patchouli 1.20.1-84
- Curios 5.4.5 (Forge) OR Trinkets 3.7.1 (Fabric)
