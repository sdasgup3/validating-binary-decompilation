void leaf() {
  __asm__("shrq %cl, %rbx");
  }

void main() {
  leaf();
}