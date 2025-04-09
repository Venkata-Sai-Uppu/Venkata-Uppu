import React, { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { LineChart, Line, BarChart, Bar, PieChart, Pie, Cell, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

const skillsData = [
  { name: 'Python', value: 90 },
  { name: 'JavaScript', value: 85 },
  { name: 'SQL', value: 80 },
  { name: 'React', value: 75 },
  { name: 'Node.js', value: 70 },
  { name: 'Tableau', value: 85 },
  { name: 'Power BI', value: 80 },
  { name: 'Data Analysis', value: 88 },
  { name: 'Machine Learning', value: 75 },
];

const projectImpactData = [
  { name: 'Customer Satisfaction', value: 30 },
  { name: 'Product Awareness', value: 15 },
  { name: 'Data Processing Efficiency', value: 50 },
];

const COLORS = ['#0088FE', '#00C49F', '#FFBB28', '#FF8042', '#8884D8'];

const Portfolio = () => {
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    setIsVisible(true);
  }, []);

  return (
    <div className="bg-gray-100 min-h-screen font-sans">
      <header className="bg-blue-600 text-white p-6">
        <motion.h1
          initial={{ opacity: 0, y: -50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5 }}
          className="text-4xl font-bold mb-2"
        >
          Venkata Sai Uppu
        </motion.h1>
        <motion.p
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.5, duration: 0.5 }}
          className="text-xl"
        >
          Data Analyst | Software Developer | Computer Engineering Graduate
        </motion.p>
      </header>

      <main className="container mx-auto p-6">
        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">About Me</h2>
          <motion.p
            initial={{ opacity: 0, x: -50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.5 }}
            className="text-lg"
          >
            As a Computer Engineering graduate with a Master's in Information Technology (focusing on Cybersecurity, Data Analytics, and Application Development), I bring a unique blend of technical skills and analytical thinking to the field of data science and software development. My experience spans from analyzing complex datasets to developing automated data processing scripts, always with an eye towards driving actionable insights and improving efficiency.
          </motion.p>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Skills</h2>
          <ResponsiveContainer width="100%" height={400}>
            <BarChart data={skillsData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="name" />
              <YAxis />
              <Tooltip />
              <Legend />
              <Bar dataKey="value" fill="#8884d8" />
            </BarChart>
          </ResponsiveContainer>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Data Analysis Projects Impact</h2>
          <ResponsiveContainer width="100%" height={400}>
            <PieChart>
              <Pie
                data={projectImpactData}
                cx="50%"
                cy="50%"
                labelLine={false}
                outerRadius={150}
                fill="#8884d8"
                dataKey="value"
                label={({ name, percent }) => `${name} ${(percent * 100).toFixed(0)}%`}
              >
                {projectImpactData.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                ))}
              </Pie>
              <Tooltip />
              <Legend />
            </PieChart>
          </ResponsiveContainer>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Experience</h2>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
            className="bg-white p-6 rounded-lg shadow-md mb-6"
          >
            <h3 className="text-2xl font-semibold mb-2">Data Analyst - L&T Mind Tree</h3>
            <p className="text-gray-600 mb-4">Jun 2022 - Jul 2023</p>
            <ul className="list-disc pl-5">
              <li>Analyzed and interpreted complex datasets to support client projects, leading to data-driven decision-making.</li>
              <li>Designed and implemented data visualization dashboards using Python and Tableau to present actionable insights.</li>
              <li>Collaborated with cross-functional teams to identify key metrics and KPIs, enhancing project outcomes.</li>
            </ul>
          </motion.div>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.2 }}
            className="bg-white p-6 rounded-lg shadow-md"
          >
            <h3 className="text-2xl font-semibold mb-2">Technical Support Intern - Blue Prism</h3>
            <p className="text-gray-600 mb-4">Jan 2022 - Jun 2022</p>
            <ul className="list-disc pl-5">
              <li>Developed and automated data processing scripts using Python, reducing manual effort by 50%.</li>
              <li>Analyzed technical support data to identify trends and improve response times and customer satisfaction.</li>
              <li>Created detailed reports and visualizations to communicate findings to senior management.</li>
            </ul>
          </motion.div>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Key Projects</h2>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.2 }}
            className="bg-white p-6 rounded-lg shadow-md mb-6"
          >
            <h3 className="text-2xl font-semibold mb-2">Customer Segmentation Analysis</h3>
            <p className="text-gray-600 mb-4">2024</p>
            <p>Leveraged Python and advanced data analytics libraries to analyze customer behavior patterns. Implemented K-means clustering to identify distinct customer segments, enabling targeted marketing strategies. This analysis contributed to a significant 30% increase in customer satisfaction scores within a six-month period.</p>
          </motion.div>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.4 }}
            className="bg-white p-6 rounded-lg shadow-md"
          >
            <h3 className="text-2xl font-semibold mb-2">Sentiment Analysis of Social Media Data</h3>
            <p className="text-gray-600 mb-4">2023</p>
            <p>Developed a sophisticated sentiment analysis tool using NLTK and TextBlob to evaluate audience sentiment across 20+ product launches. The insights derived from this analysis directly informed marketing strategy adjustments, leading to a 15% boost in overall product awareness.</p>
          </motion.div>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Education</h2>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
            className="bg-white p-6 rounded-lg shadow-md mb-6"
          >
            <h3 className="text-2xl font-semibold mb-2">Master of Science: Information Technology</h3>
            <p className="text-gray-600 mb-4">University of Cincinnati, Ohio | Anticipated Graduation: Nov 2024</p>
            <p>Track: Cybersecurity, Data Analytics and Application Development | GPA: 4.0</p>
          </motion.div>
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.2 }}
            className="bg-white p-6 rounded-lg shadow-md"
          >
            <h3 className="text-2xl font-semibold mb-2">Bachelor of Science: Computer Science (CSE)</h3>
            <p className="text-gray-600 mb-4">V R Siddhartha, Vijayawada, India | Graduated: May 2023</p>
            <p>Concentration: Database Management, Data security | GPA: 3.7</p>
          </motion.div>
        </section>

        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-4">Certifications</h2>
          <ul className="list-disc pl-5">
            <motion.li
              initial={{ opacity: 0, x: -50 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.5 }}
              className="mb-2"
            >
              Career Essentials in Data Analysis by Microsoft
            </motion.li>
            <motion.li
              initial={{ opacity: 0, x: -50 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.5, delay: 0.2 }}
              className="mb-2"
            >
              Data Analyst Bootcamp by Alex [Data Analyst expert]
            </motion.li>
            <motion.li
              initial={{ opacity: 0, x: -50 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.5, delay: 0.4 }}
              className="mb-2"
            >
              Advanced Python certification (Coursera)
            </motion.li>
          </ul>
        </section>
      </main>

      <footer className="bg-blue-600 text-white p-6 mt-12">
        <p>© 2024 Venkata Sai Uppu. All rights reserved.</p>
        <div className="mt-4">
          <a href="mailto:uppuvi@mail.uc.edu" className="mr-4 hover:underline">Email</a>
          <a href="https://www.linkedin.com/in/venkata-sai-uppu/" className="mr-4 hover:underline">LinkedIn</a>
          <a href="https://github.com/Venkata-Sai-Uppu" className="hover:underline">GitHub</a>
        </div>
      </footer>
    </div>
  );
};

export default Portfolio;
