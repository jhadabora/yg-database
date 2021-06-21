-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2021 at 08:00 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yordas_chemicals`
--
CREATE DATABASE IF NOT EXISTS `yordas_chemicals` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yordas_chemicals`;

-- --------------------------------------------------------

--
-- Table structure for table `regulations`
--

CREATE TABLE `regulations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regulations`
--

INSERT INTO `regulations` (`id`, `name`) VALUES
(1, 'Reach SVHC Candid'),
(2, 'TSD List');

-- --------------------------------------------------------

--
-- Table structure for table `substances`
--

CREATE TABLE `substances` (
  `id` char(8) NOT NULL,
  `ec` varchar(60) NOT NULL,
  `cas` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `substances`
--

INSERT INTO `substances` (`id`, `ec`, `cas`, `name`) VALUES
('ID000001', '215-607-8', '1333-82-0', 'Chromium (VI) trioxide; Trioxochromium; Chromium oxides'),
('ID000002', '231-801-5; 236-881-5', '7738-94-5; 13530-68-2', 'Acids generated from chromium trioxide and their oligomers (chromic acid and dichromic acid); Chromic acid'),
('ID000003', '203-713-7', '109-86-4', '2-Methoxyethanol; Ethylene glycol monomethyl ether (EGME)'),
('ID000004', '200-755-8', '71-48-7', 'Cobalt di(acetate); Acetic acid, cobalt(2+) salt'),
('ID000005', '208-169-4', '513-79-1', 'Cobalt (II) carbonate'),
('ID000006', '233-402-1', '10141-05-06', 'Cobalt dinitrate; Nitric acid, cobalt(2+) salt'),
('ID000007', '233-334-2', '10124-43-3', 'Cobalt sulphate; Sulfuric acid, cobalt(2+) salt (1:1)'),
('ID000009', '203-804-1', '110-80-5', '2-Ethoxyethanol; Ethylene glycol monoethyl ether (EGEE)'),
('ID000018', '201-173-7', '79-06-1', 'Acrylamide; Prop-2-enamide; 2-Propenamide'),
('ID000019', '202-974-4', '101-77-9; 83712-44-1', '4,4\'-Diaminodiphenylmethane; 4,4\'-Methylenedianiline (MDA)'),
('ID000020', '201-622-7', '85-68-7', 'Benzyl butyl phthalate; Butyl benzyl phthalate (BBP); 1,2-Benzenedicarboxylic acid, bis(2-ethylhexyl) ester; 1,2-Benzenedicarboxylic acid, butyl phenylmethyl ester'),
('ID000021', '204-211-0', '117-81-7', 'Bis(2-ethylhexyl) phthalate; 1,2-Benzenedicarboxylic acid, butyl phenylmethyl ester; 1,2-Benzenedicarboxylic acid, bis(2-ethylhexyl) ester; Di-(2-ethylhexyl) phthalate (DEHP)'),
('ID000022', '201-557-4', '84-74-2', 'Dibutyl phthalate; Di-n-butyl phthalate (DBP); Diisobutyl phthalate; 1,2-Benzenedicarboxylic acid, dibutyl ester'),
('ID000023', '287-476-5', '85535-84-8', 'Alkanes, C10-13, chloro; Short-chain chlorinated paraffins (SCCP)'),
('ID000024', '204-371-1', '0120-12-7', 'Anthracene, pure'),
('ID000305', '214-237-4', '1116-54-7', '2,2\'-(Nitrosoimino)bisethanol; N-Nitrosodiethanolamine'),
('ID000355', '200-549-8', '62-75-9', 'N-Nitrosodimethylamine; Dimethylnitrosoamine (NDMA)'),
('ID000371', '210-698-0', '621-64-7', 'N-Nitrosodipropylamine; N-Nitrosodi-n-propylamine'),
('ID000731', '235-067-7', '12065-90-6', 'Pentalead tetraoxide sulphate'),
('ID000732', '235-380-9', '12202-17-4', 'Tetralead trioxide sulphate'),
('ID000733', '235-252-2', '12141-20-7', 'Trilead dioxide phosphonate'),
('ID000734', '273-688-5', '69011-06-09', 'Dibasic lead phthalate; [Phthalato(2-)]dioxotrilead; Lead, [1,2-benzenedicarboxylato(2-)]dioxotri-'),
('ID000735', '235-702-8', '12578-12-0', 'Dioxobis(stearato)trilead'),
('ID000736', '214-005-2', '1072-35-1', 'Lead distearate'),
('ID000800', '215-158-8', '1308-14-1', 'Chromium (III) hydroxide'),
('ID000806', '215-159-3', '1308-31-2', 'Dichromium iron tetraoxide'),
('ID000811', '270-148-0', '68411-78-9', 'Lead oxide (PbO), lead-contg.'),
('ID000812', '241-894-4', '17976-43-1', 'Cyclo-di-mu-oxo(mu-phthalato)trilead'),
('ID000813', '217-170-9', '1762-27-2', 'Diethyldimethylplumbane'),
('ID001190', '215-160-9', '1308-38-9', 'Dichromium trioxide; Chromic Oxide; Chromium (III) oxide; C.I. 77288'),
('ID001303', '231-157-5', '7440-47-3', 'Chromium (Cr)'),
('ID001410', '233-245-9', '10099-74-8', 'Lead dinitrate; Nitric acid, lead(2+) salt'),
('ID001437', '235-790-8', '12737-27-8', 'Chromium iron oxide'),
('ID001749', '272-713-7', '68909-79-5', 'Hematite, chromium green black'),
('ID007793', '', '', 'Nitrosamines; N-nitrosamines'),
('ID011453', '', '612-64-6', 'N-Nitrosoethylphenylamine'),
('ID011454', '', '10595-95-6', 'N-Nitrosomethylethylamine'),
('ID011455', '210-366-5', '614-00-6', 'N-Nitrosomethylphenylamine'),
('ID011456', '', '59-89-2', 'N-Nitrosomorpholine'),
('ID011457', '213-218-8', '930-55-2', 'N-Nitrosopyrrolidine; 1-Nitrosopyrrolidine'),
('ID011458', '', '601-77-4', 'N-Nitrosodi-i-propylamine'),
('ID011459', '213-101-1', '924-16-3', 'N-Nitrosodibutylamine; N-Nitrosodi-n-butylamine (NDBA)'),
('ID011460', '202-886-6', '100-75-4', 'N-Nitrosopiperidine; 1-Nitrosopiperidine'),
('ID013332', '201-663-0', '86-30-6', 'Nitrosodiphenylamine; N-Nitrosodiphenylamine; Benzenamine, N-nitroso-N-phenyl-'),
('ID013337', '200-226-1', '55-18-5', 'N-Nitrosodiethylamine (NDEA)'),
('ID013552', '', '4549-40-0', 'N-Nitrosomethylvinylamine'),
('ID013721', '', '60153-49-3', '3-(N-Nitrosomethylamino) propionitrile'),
('ID013735', '', '64091-91-4', '4-(N-Nitrosomethylamino)-1-(3-pyridyl)-1-butanone (NNK)'),
('ID020985', '245-372-7', '22990-95-0', 'N-cyclohexyl-N-nitrosohydroxylamine, sodium salt'),
('ID023404', '269-320-8', '68214-80-2', 'N-[2-[ethyl(3-methyl-4-nitrosophenyl)amino]ethyl]methanesulphonamide monohydrochloride');

-- --------------------------------------------------------

--
-- Table structure for table `substance_regulations`
--

CREATE TABLE `substance_regulations` (
  `substance_id` char(8) NOT NULL,
  `regulation_id` int(11) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `substance_regulations`
--

INSERT INTO `substance_regulations` (`substance_id`, `regulation_id`, `info`) VALUES
('ID000001', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a); Mutagenic (Article 57b)'),
('ID000002', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a)'),
('ID000003', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Toxic for reproduction (Article 57c)'),
('ID000004', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a); Toxic for reproduction (Article 57c)'),
('ID000005', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a); Toxic for reproduction (Article 57c)'),
('ID000006', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a); Toxic for reproduction (Article 57c)'),
('ID000007', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Carcinogenic (Article 57a); Toxic for reproduction (Article 57c)'),
('ID000009', 1, 'Substance included on the Candidate List as of 15/12/2010. Reason for inclusion: Toxic for reproduction (Article 57c)'),
('ID000018', 1, 'Substance included on the Candidate List as of 30/03/2010. Reason for inclusion: Carcinogenic (Article 57a); Mutagenic (Article 57b)'),
('ID000019', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: Carcinogenic (Article 57a)'),
('ID000020', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: Toxic for reproduction (Article 57c)'),
('ID000021', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: Equivalent level of concern having probable serious effects to the environment (Article 57f); Toxic for reproduction (article 57c)'),
('ID000022', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: Toxic for reproduction (Article 57c)'),
('ID000023', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: PBT (Article 57d); vPvB (Article 57e)'),
('ID000024', 1, 'Substance included on the Candidate List as of 28/10/2008. Reason for inclusion: PBT (Article 57d)'),
('ID000305', 2, 'Yes (Prohibited CMR under Annex II, part 3, although exemptions may apply when the conditions laid down in Annex II, part 3 are met; Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID000355', 2, 'Yes (Prohibited CMR under Annex II, part 3, although exemptions may apply when the conditions laid down in Annex II, part 3 are met; Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID000371', 2, 'Yes (Prohibited CMR under Annex II, part 3, although exemptions may apply when the conditions laid down in Annex II, part 3 are met; Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID007793', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011453', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011454', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011455', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011456', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011457', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011458', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011459', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID011460', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID013332', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID013337', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID013552', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID013721', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID013735', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID020985', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)'),
('ID023404', 2, 'Yes (Prohibited nitrosamine under Annex II, part 3: prohibited for use in toys intended for use by children under 36 months or in other toys intended to be placed in the mouth if the migration of the substance is equal to or higher than 0.05 mg/kg)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regulations`
--
ALTER TABLE `regulations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `substances`
--
ALTER TABLE `substances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `substance_regulations`
--
ALTER TABLE `substance_regulations`
  ADD PRIMARY KEY (`substance_id`,`regulation_id`),
  ADD KEY `regulation_fk` (`regulation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regulations`
--
ALTER TABLE `regulations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `substance_regulations`
--
ALTER TABLE `substance_regulations`
  ADD CONSTRAINT `regulation_fk` FOREIGN KEY (`regulation_id`) REFERENCES `regulations` (`id`),
  ADD CONSTRAINT `substance_fk` FOREIGN KEY (`substance_id`) REFERENCES `substances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
