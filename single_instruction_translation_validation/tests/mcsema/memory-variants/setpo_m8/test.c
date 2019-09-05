void leaf() {
  __asm__("setpo -4(%rbp)");
  }

void main() {
  leaf();
}