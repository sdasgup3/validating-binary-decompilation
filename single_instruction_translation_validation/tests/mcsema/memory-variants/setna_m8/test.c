void leaf() {
  __asm__("setna -4(%rbp)");
  }

void main() {
  leaf();
}