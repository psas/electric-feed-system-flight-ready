# electric-feed-system-flight-ready

## Introduction

The goal of this project was to develop a cryogenic compatible, flight-ready electric feed system (EFS) for Portland State Aerospace Society for use in their upcoming Launch Vehicle 4 (LV4). This project has made significant advancements in the design and testing of a cryogenic compatible pump. However, more work must be completed before the EFS will be deemed flight-ready. Improvements were made upon previous EFS team’s designs, resulting in a more compact, higher powered, and robust pump system. Crucially, the new design has been tested and confirmed to be cryogenic compatible. The final EFS design has successfully shown PSAS that the pump design is capable of pumping cryogenic fluids without seizing and is able to maintain single-phase fluid flow at the system outlet under specified conditions.

![alt text](https://github.com/psas/electric-feed-system-flight-ready/blob/master/Media/Cryo_Test.png)



## EFS Onboarding

The testing performed on the final cryogenic EFS design for the 2018-2019 PSAS Capstone provided useful knowledge to the organization for continued EFS development. The successful testing of this pump showed that the cryogenic tolerancing functions developed by our team accurately compensate for thermal deformation in the aluminum pump components to allow for proper rotary alignment. Additionally, the cryogenic EFS test showed that this design is capable of pressurizing the cryogenic fluid to obtain single phase fluid flow at the system exit. However, testing has also led to a better understanding of the further work that needs to be performed in order to ready the EFS for flight on LV4. These next steps are outlined below.


### Pump Internals

#### Bearings

The use of a single stainless steel axial thrust roller bearing in the IPA pump displayed inadequate alignment capabilities during this pump's tests. For this reason, the roller bearing was used in conjunction with a Boca ceramic thrust bearing. This resulted in reduced opportunity for misalignment along the rotating element. However, during cryogenic testing, there were several instances of the exit flow momentarily transitioning to gaseous nitrogen at the pump outlet. While the exact cause of this phase duality is not immediately known, one potential source of inconsistency in performance may be from the stainless steel bearing. At cryogenic temperatures, the material of this bearing will contract, which leaves potential for the bearing rollers to rock in the race. For this reason, it is suggested that the second bearing be replaced with either another fully ceramic bearing, or a ceramic-stainless hybrid bearing. This will satisfy the material compatibility of liquid oxygen while ensure optimal performance at cryogenic temperatures.

#### Seals

Testing of the IPA pumps were largely unsuccessful. Misalignment of the rotating element caused the pump to seize during operation. Because the motors selected for the EFS are not rated for high torque applications, this rapid increase in torsional load on the shaft caused the ESC to overload. The likely cause of this was a drastic increase in current as the motor attempted to rotate the pump shaft.

The Flowserve PacSeal used for IPA testing is believed to be, at least in part, the reason for this misalignment. The seal is designed be able to move along the shaft as needed to account for the increase in volute pressure. However, the seal did not perform as designed during testing, and the shaft locked in place.

Additionally, the seal did not adequately retain the fluid as intended. This seal was ultimately selected as a placeholder in the first place, due to it's low cost and ease of accessibility. However, the specifications of this seal do not meet the requirements of the electric feed system in the first place, and as such should not be used in future designs.

For cryogenic testing, the EFS team had to find a sealing solution to meet the upcoming deadline for cryogenic testing. For this reason, a PTFE press-fit sealing collar was developed as a temporary sealing solution. It performed well enough for the purposes of this cryogenic test. However, during this test, gaseous nitrogen leaked from the sealing chamber. For this reason, it is not recommended that this design be considered for future EFS iterations.

Research performed regarding cryogenic dynamic seals with LOX compatibility has led to the selection of a Parker FCC-V spring energized seal (or an equivalent seal from Gallagher Seals) as the optimal seal for both IPA and LOX applications. This selection was identified before cryogenic testing took place. However, due lack of easy access to this seal type, the EFS team was not able to procure seals in time for testing. In the future, it is advised that the next EFS team work on obtaining these seals early on in the development stage.

In order to reduce the total pressure on the seal, it is recommended that the impeller be optimally balanced by adding shallow Barske vanes on the rear face of the impeller in addition to the suction vanes. This helps influence the fluid away from the sealing chamber and back out toward the diffuser, reducing the total pressure the seal experiences.


### Rotary Element Alignment

The sealing and bearing solutions outlined above will help improve alignment in pump shaft rotation. Additionally, a direct motor mount was developed to further decrease variation in alignment. This design improved alignment during cryogenic testing, and is advised to be used in all future designs.

Additionally, it is recommended that the next EFS team consider procuring a motor with an custom extended shaft. With enough length, this shaft can be used to drive the pump directly, removing the need for a coupler. This would reduce the overall size of the system and further improve alignment.

### Instrumentation

While testing of the cryogenic pump was successful and provided results that benefited the development of the PSAS electric feed system, the analog pressure gauges used during the test were not able to operate at such low temperatures. Because of this, no quantitative results were obtained from the test.

Moving forward, it is recommended that further research is performed into cryogenic compatible pressure and flow rate instruments. Ideally, pressure transducers should be integrated into the DAQ system to allow digital conversion of the data. The PSAS Liquid Fuel Engine Test Stand (LFETS) team has performed reasonable amounts of research into both of these instrument types, and their work can be used as a resource for how these measurement devices can best be integrated into the EFS. A LOX compatible differential pressure flowmeter (Venturimeter) is recommended for mass flow data collection. 


### LV4 Integration

#### Test Stand

Future iterations of the EFS pumps should be capable of integrating into the LFETS and used to regulate the pressure and mass flow delivered to the test engine. Once on the test stand, the flow rate and pressure measurements discussed previously will already be measured by the test stand's instrumentation. In this way, both projects will benefit from the work of the other.


#### LV4 Airframe

The current mounting design for both electric feed system pumps consists of the 2 pumps encased in a rectagular mount on opposite corners. This configuration was designed to be compatible with the 12 inch diameter selected for LV4. However, it will be the responsibility of future EFS teams to identify and test the best way to integrate these mounts into the rocket module itself.
