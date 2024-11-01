import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    
                    // Header Section - Name and Introduction
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Hello I’m Advait Singh")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text("Mobile Application Developer Based In India")
                            .font(.title2)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .padding(.top, 40)
                    
                    Divider().background(Color.white) // White divider
                    
                    // About Me Section
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About Me")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("""
                        I am a passionate and driven iOS App Developer currently pursuing a B-Tech in Computer Science with a focus on Software Engineering at SRM University (expected graduation: June 2025). With a strong foundation in Swift, UIKit/SwiftUI, and Core Data, I’ve developed a range of applications, from movie databases and news readers to an automobile eCommerce platform. My projects showcase my expertise in RESTful APIs, networking, and payment integration, allowing me to create user-friendly, high-performing apps.
                        """)
                            .font(.body)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    
                    Divider().background(Color.white) // White divider
                    
                    // Skills Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("My Skills")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Swift, Kotlin, React Native, Dart, HTML, CSS, JavaScript, C/C++")
                            .font(.body)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    
                    Divider().background(Color.white) // White divider
                    
                    // Experience Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("My Experience")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        experienceView(
                            title: "Mobile App Developer at Bharat Intern",
                            date: "August 2022 - Present",
                            description: "As a Senior Software Engineer, I played a pivotal role in developing innovative solutions for Google's core search algorithms."
                        )
                        
                        experienceView(
                            title: "Junior Software Engineer at Apple",
                            date: "Jan 2016 - Dec 2017",
                            description: "Played a key role in shaping the architecture of mission-critical software projects."
                        )
                        
                        experienceView(
                            title: "Software Engineer at YouTube",
                            date: "Jan 2017 - Oct 2019",
                            description: "Focused on the design and implementation of backend systems for the social media giant's platform."
                        )
                    }
                    
                    Divider().background(Color.white) // White divider
                    
                    // Projects Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("My Projects")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        projectView(
                            title: "PITSTOP - E-commerce Application",
                            description: "Developed an app for online shopping with product listings, a shopping cart, and payment integration using Swift and Core Data."
                        )
                        
                        projectView(
                            title: "Movie Database Application",
                            description: "Created an app that allows users to search for movies, read reviews, and watch trailers using the TMDb API."
                        )
                        
                        projectView(
                            title: "News Reader",
                            description: "Built an app that fetches and displays the latest news articles with categories, search functionality, and bookmarks."
                        )
                    }
                    
                    Divider().background(Color.white) // White divider
                    
                    // Testimonials Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("My Testimonials")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        testimonialView(
                            name: "Evren Shah",
                            quote: "I recently had to jump on 10+ different calls across eight different countries to find the right owner."
                        )
                        
                        testimonialView(
                            name: "Flora Sheen",
                            quote: "I recently had to jump on 10+ different calls across eight different countries to find the right owner."
                        )
                    }
                    
                    Divider().background(Color.white) // White divider
                    
                    // Contact Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Get In Touch")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Let’s talk for something special.")
                            .font(.body)
                            .foregroundColor(.white.opacity(0.8))
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Email: Advaitsingh05@gmail.com")
                            Text("Phone: 9541200124")
                        }
                        .font(.body)
                        .foregroundColor(.white.opacity(0.8))
                    }
                    .padding(.bottom, 50)
                }
                .padding(.horizontal, 20)
                .navigationBarTitle("Personal Portfolio", displayMode: .inline) // Title bar
            }
            .background(Color.black.edgesIgnoringSafeArea(.all)) // Black background
        }
    }
    
    // Experience View Helper
    func experienceView(title: String, date: String, description: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(date)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
            
            Text(description)
                .font(.body)
                .foregroundColor(.white.opacity(0.8))
        }
    }
    
    // Project View Helper
    func projectView(title: String, description: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(description)
                .font(.body)
                .foregroundColor(.white.opacity(0.8))
        }
    }
    
    // Testimonial View Helper
    func testimonialView(name: String, quote: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(quote)
                .font(.body)
                .foregroundColor(.white.opacity(0.8))
            
            Text("- \(name)")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
                .italic()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

