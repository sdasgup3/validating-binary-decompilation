void leaf() {
  __asm__("pushq -4(%rbp)");
  }

void main() {
  leaf();
}