void leaf() {
  __asm__("shlq %cl, %rbx");
  }

void main() {
  leaf();
}