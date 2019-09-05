void leaf() {
  __asm__("setc -4(%rbp)");
  }

void main() {
  leaf();
}