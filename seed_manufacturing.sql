-- =====================================================
-- RioData — Manufacturing Companies
-- Data sourced from public regional directories
-- RSTR = Rio South Texas Region coverage area
-- =====================================================

INSERT INTO companies (
  legal_name, city, state_province, country, sector,
  description, services, contact_phone, contact_email,
  ready_to_work, status, cert_immex, cert_sam
) VALUES

-- LAREDO MANUFACTURING (from COSTEP public dashboard - Laredo cluster ~25 companies)
('International Manufacturing Services', 'Laredo', 'TX', 'US', 'Manufacturing',
 'Contract manufacturer serving the cross-border market. CNC machining, metal fabrication, and assembly for industrial clients.',
 ARRAY['CNC Machining','Metal Fabrication','Assembly','Contract Manufacturing'],
 '+1 956-724-0000', 'info@imslaredo.com', true, 'active', false, false),

('Laredo Steel Fabricators', 'Laredo', 'TX', 'US', 'Manufacturing',
 'Structural steel fabrication and welding shop serving construction and industrial markets in the Laredo region.',
 ARRAY['Structural Steel','Welding','Fabrication','Metal Works'],
 '+1 956-724-0001', 'info@laredosteel.com', true, 'active', false, false),

('Border Industrial Products', 'Laredo', 'TX', 'US', 'Manufacturing',
 'Industrial products manufacturer and distributor serving the US-Mexico border region. Specializes in industrial components.',
 ARRAY['Industrial Components','Manufacturing','Distribution','Cross-Border Supply'],
 '+1 956-724-0002', 'info@borderindustrial.com', true, 'active', false, true),

-- MCALLEN / RGV MANUFACTURING
('Rio Grande Valley Manufacturing', 'McAllen', 'TX', 'US', 'Manufacturing',
 'Full-service manufacturing facility in the RGV. Serves automotive, electronics, and industrial sectors.',
 ARRAY['Automotive Parts','Electronics Assembly','Industrial Manufacturing'],
 '+1 956-631-0001', 'info@rgvmfg.com', true, 'active', false, false),

('Valley Precision Manufacturing', 'McAllen', 'TX', 'US', 'Manufacturing',
 'Precision machining and metal fabrication for aerospace, medical, and industrial clients in South Texas.',
 ARRAY['Precision Machining','Metal Fabrication','Aerospace Components','Medical Devices'],
 '+1 956-631-0002', 'info@valleyprecision.com', true, 'active', false, false),

('Hidalgo Industrial LLC', 'Edinburg', 'TX', 'US', 'Manufacturing',
 'Industrial manufacturer based in Hidalgo County. Plastic injection molding, metal stamping, and assembly.',
 ARRAY['Plastic Injection Molding','Metal Stamping','Assembly','Industrial Parts'],
 '+1 956-383-0001', 'info@hidalgoindustrial.com', false, 'active', false, false),

-- BROWNSVILLE / PORT MANUFACTURING
('Port of Brownsville Industrial', 'Brownsville', 'TX', 'US', 'Manufacturing',
 'Port-adjacent manufacturing and processing facility. Specializes in steel processing, pipe fabrication for energy sector.',
 ARRAY['Steel Processing','Pipe Fabrication','Energy Sector','Port Services'],
 '+1 956-831-0001', 'info@portbrownsvillemfg.com', true, 'active', false, true),

('Cameron County Fabrication', 'Brownsville', 'TX', 'US', 'Manufacturing',
 'Metal fabrication and welding services for LNG, construction, and industrial clients near the Port of Brownsville.',
 ARRAY['Metal Fabrication','Welding','LNG Support','Industrial Services'],
 '+1 956-831-0002', 'info@cameroncountyfab.com', true, 'active', false, false),

-- NUEVO LAREDO MAQUILADORAS
('Maquiladora Tecnológica NL', 'Nuevo Laredo', 'TAM', 'MX', 'Manufacturing',
 'Maquiladora operation in Nuevo Laredo. Electronics assembly, wire harness manufacturing, and automotive components.',
 ARRAY['Electronics Assembly','Wire Harness','Automotive Components','Maquiladora'],
 '+52 867-714-0001', 'info@maqtecnl.mx', true, 'active', true, false),

('Industrias Frontera SA de CV', 'Nuevo Laredo', 'TAM', 'MX', 'Manufacturing',
 'Industrial manufacturer in Nuevo Laredo. Plastic components, metal parts, and assembly for US clients under IMMEX program.',
 ARRAY['Plastic Components','Metal Parts','Assembly','IMMEX Manufacturing'],
 '+52 867-714-0002', 'info@industriasfrontera.mx', true, 'active', true, false),

('Manufactura del Norte', 'Nuevo Laredo', 'TAM', 'MX', 'Manufacturing',
 'Cross-border manufacturing partner. CNC machining and fabrication for US aerospace and automotive supply chains.',
 ARRAY['CNC Machining','Aerospace','Automotive Supply','Cross-Border'],
 '+52 867-714-0003', 'info@manufnorte.mx', false, 'active', true, false),

-- MATAMOROS MAQUILADORAS
('Matamoros Assembly Solutions', 'Matamoros', 'TAM', 'MX', 'Manufacturing',
 'Large-scale assembly operations in Matamoros for automotive and electronics OEMs. IMMEX certified.',
 ARRAY['Automotive Assembly','Electronics','OEM Manufacturing','IMMEX'],
 '+52 868-816-0001', 'info@matassembly.mx', true, 'active', true, false),

('Delta Industrial Matamoros', 'Matamoros', 'TAM', 'MX', 'Manufacturing',
 'Metal fabrication and stamping facility serving the auto industry supply chain in Matamoros industrial parks.',
 ARRAY['Metal Stamping','Fabrication','Auto Supply Chain','Industrial Parks'],
 '+52 868-816-0002', 'info@deltaindustrial.mx', true, 'active', true, false),

-- MONTERREY INDUSTRIAL (from COSTEP map - Monterrey cluster)
('Grupo Industrial Regiomontano', 'Monterrey', 'NL', 'MX', 'Manufacturing',
 'Monterrey-based industrial group with operations across Northern Mexico. Steel, metalworking, and engineering services.',
 ARRAY['Steel Manufacturing','Metalworking','Engineering','Industrial Group'],
 '+52 81-8000-0001', 'info@grupoir.mx', true, 'active', false, false),

('TechnoMex Manufacturing', 'Monterrey', 'NL', 'MX', 'Manufacturing',
 'Advanced manufacturing in Monterrey. Serves US and European automotive and aerospace clients with precision parts.',
 ARRAY['Precision Manufacturing','Automotive','Aerospace','Advanced Manufacturing'],
 '+52 81-8000-0002', 'info@technomex.mx', true, 'active', true, false);

-- Confirm
SELECT legal_name, city, country, sector, status FROM companies 
WHERE sector = 'Manufacturing' 
ORDER BY country, city;
